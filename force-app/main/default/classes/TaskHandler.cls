public class TaskHandler
{
    public static void checkingProfile(list<task> t)
    {
        id uid =userinfo.getProfileId();
        profile p=[select id,name 
                       from profile
                      where id=:uid];
        for(task t1:t)
        {
             if(p.name!='System Administrator')
        {
            t1.adderror('you cant delete this task,please contact admin for further information');
        }
        }
       
    }

}