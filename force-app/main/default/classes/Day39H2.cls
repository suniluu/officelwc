public class Day39H2 implements database.Batchable<sobject> {
   
public database.QueryLocator start(database.BatchableContext bc)
{
    return database.getQueryLocator([select name,Functional_Area__c,Min_Pay__c, 
                                     (select name,Empolyment_Website__c from Job_Postings__r)
                                     from Position__c]);
}
    public void execute(database.BatchableContext bc,list<Position__c> pos)
    {
        list<Job_Posting__c>jp1=new list<Job_Posting__c>();
        for(Position__c p:pos)
        {
            list<Job_Posting__c> jp=p.Job_Postings__r;
            if(jp.size()==0)
            {
              Job_Posting__c job=new Job_Posting__c(Position__c=p.id,Empolyment_Website__c='a045g000009C8yFAAS');  
            jp1.add(job);
            }
           
        }
      insert jp1;
    }
    public void finish(database.BatchableContext bc)
    {
     System.debug('job application inserted successfully');        
    }
}