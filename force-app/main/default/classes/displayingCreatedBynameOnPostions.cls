public class displayingCreatedBynameOnPostions
{
    public static void updateUserNameOfPosition(List<Position__c>poslist)
    {
        List<Id> idList = new List<Id>();
        for(Position__c pos : poslist)
        {
            idList.add(pos.Createdbyid);
        }
        List<user> ulist = [Select id,Name 
                               from user 
                               where user.id In : idList];
       
        for(Position__c p : poslist)
        {
            for(User u : ulist)
            {
                if(p.Createdbyid == u.id)
                {
                   p.UpdateDetails__c = u.name;
                }
            }
        }
   }
}