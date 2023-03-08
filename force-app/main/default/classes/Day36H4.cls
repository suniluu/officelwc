public class Day36H4 {
    public void deletejobApplications()
    {
list<Job_Application__c> ja=[select name,Status__c,	Total_Rating__c,Average_Rating_Number__c
                            from Job_Application__c where Status__c='Rejected'];
    delete ja;
list<Job_Application__c> ja1=[select name,Status__c,	Total_Rating__c,Average_Rating_Number__c
                            from Job_Application__c where Status__c='Rejected' and isdeleted=true];
System.debug('job application deleted='+ja1);    
}
}