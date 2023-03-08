public class Day40H5 implements database.Batchable<sobject>,database.stateful{
     public  set<id> allid=new set<id>();
    public  set<id> successid=new set<id>();
     public  set<id> failleadid=new set<id>();
    public database.QueryLocator start(database.BatchableContext bc)
    {
        return database.getQueryLocator([select name,Functional_Area__c
                                         from Position__c  limit 5]);
    }
    public void execute(database.BatchableContext bc,list<Position__c> pos)
    {
        list<Job_Posting__c> jp1=new list<Job_Posting__c>();
        for(Position__c p:pos){
            allid.add(p.id);
        Job_Posting__c jp=new Job_Posting__c(Position__c=p.id,Empolyment_Website__c='a045g000009C8yFAAS');
            jp1.add(jp);
        }
        
        database.SaveResult[] results=database.insert(jp1,false);
        {
            for(Integer i=0;i<results.size();i++){
            if(results.get(i).isSuccess())
            {
                successid.add(results.get(i).id);
                
            }
            else
            {
                failleadid.add(results.get(i).id);
                list<Database.Error> derr= results.get(i).getErrors();
                for(database.error err : derr){
                    System.debug('Error code = '+ err.getStatusCode());
                    System.debug('Error Field = '+ err.getFields());
                    System.debug('Error Message = '+ err.getMessage());
                
                
            }
            }
        }
    }
    }
     public void finish(database.BatchableContext bc)
{
    System.debug('All lead id='+allid);
    System.debug('all success id='+successid);
    System.debug('all faillead id='+failleadid);
}

}