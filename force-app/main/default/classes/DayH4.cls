public class DayH4 {
 list<Job_Application__c> ja=[select Name,Status__c,
                             Position__r.Name,Position__r.Functional_Area__c,
                             Candidate__r.Name,Candidate__r.Last_Name__c
                             from Job_Application__c where Status__c='Schedule Interview' ];
    public void displayjobapplication()
    {
        for(Job_Application__c ja1:ja)
        {
            System.debug('Name='+ja1.Name);
            System.debug('Status='+ja1.Status__c);
            System.debug('Position name='+ja1.Position__r.Name);
            System.debug('position funcational area='+ja1.Position__r.Functional_Area__c);
            System.debug('Candidate name='+ja1.Candidate__r.Name);
            System.debug('Candidate last name='+ja1.Candidate__r.Last_Name__c);
            
        }
    }
}