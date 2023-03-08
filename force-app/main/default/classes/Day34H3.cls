public class Day34H3 {
list<Position__c> p=[select Name,Functional_Area__c,
                           (select Name,Candidate__c from Job_Applications__r)
                            from Position__c where name='Admin'];
    public void displaypositionrecords()
    {
        for(Position__c p1:p)
        {
            System.debug('position name='+p1.name);
            System.debug('position funacational area='+p1.Functional_Area__c);
            list<Job_Application__c> ja=p1.Job_Applications__r;
            for(Job_Application__c ja1:ja)
            {
                System.debug('job application='+ja1.Name);
            list<Candidate__c> c=[select First_Name__c,Last_Name__c from Candidate__c where id=:ja1.Candidate__c];
                for(Candidate__c c1:c)
                {
                    System.debug(c);
                }
            }
            
        }
    }

}