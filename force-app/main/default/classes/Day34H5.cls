public class Day34H5 {

    list<Job_Application__c>ja=[select Name,Candidate__c,Position__c,
                               (select Name,Rating__c from Reviews__r where Rating__c<3)
                               from Job_Application__c];
    public void displayJobapplication()
    {
        for(Job_Application__c ja1:ja)
        {
          Review__c r=ja1.Reviews__r;
       {
            System.debug(r);
           
          Candidate__c c1=[select name,First_Name__c,Last_Name__c from Candidate__c where id=:ja1.Candidate__c];
           
            {
                System.debug('Candidate='+c1);
                Position__c p1=[select Name from position__c where id=:ja1.Position__c ] ;
               {
                    System.debug('position='+p1);
                }
            }
            }
        }
    }
}