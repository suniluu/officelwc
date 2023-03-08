public class Day35C8 {
list<Review__c> r=[select name,Rating__c,
                  Job_Application__r.Position__r.name,Job_Application__r.Position__r.Functional_Area__c
                   from Review__c
                  where Rating__c>3];
    public void displayratings()
    {
        for(Review__c r1:r)
        {
            System.debug('name='+r1.name);
            System.debug('Rating='+r1.Rating__c);
            System.debug('Position name='+r1.Job_Application__r.Position__r.name);
            System.debug('position funcatinal area='+r1.Job_Application__r.Position__r.Functional_Area__c);
        }
    }
}