public class Day35C7 {
	Review__c r=[select name,Rating__c,
                Job_Application__r.Status__c
                from Review__c where name='R-0002'];
    public void diplayjobApplicationstatus()
    {
      System.debug('Name='+r.name);
        System.debug('rating='+r.Rating__c);
        System.debug('Job application status='+r.Job_Application__r.Status__c);
        
    }
}