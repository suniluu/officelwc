public class Day34H4 {
list<Position__c> po=[select name,Functional_Area__c,Max_Pay__c,Min_Pay__c,
                        (select Name,Position__c from Job_Postings__r )
                        from Position__c ];
    public void displaypositionrecords()
    {
     system.debug('positions');
        for(Position__c p1:po)
        {
            System.debug('Position name ='+p1.Name);
            System.debug('Position functional area ='+p1.Functional_Area__c);
            list<Job_Posting__c> jp=p1.Job_Postings__r;
            for(Job_Posting__c jp1:jp)
            {
                System.debug('job posting='+jp1.Name);
                System.debug('job posting='+jp1.Position__c);
            }
        }
        
    }
}