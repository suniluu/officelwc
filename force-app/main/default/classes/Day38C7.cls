public class Day38C7 implements Queueable{
    public void execute(QueueableContext qc)
    {
       list<Job_Application__c> updatejp = new list<Job_Application__c>();
       list<Job_Application__c>  jp=[select Name ,Status__c,
                            Position__r.name,Position__r.Functional_Area__c
                            from Job_Application__c 
                            where Position__r.Functional_Area__c ='Ware Housing' OR Position__r.Functional_Area__c='Retail Operations'];
        
        for(Job_Application__c jp1:jp)
        {
            jp1.Status__c='Rejected';
            updatejp.add(jp1);
        }
        update updatejp;
    }

}