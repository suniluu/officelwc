public class Day35C4 {
list<Review__c> r1=[select name,Rating__c
                   from Review__c 
                    where Rating__c<3];
    public void displayreviews()
    {
        for(Review__c r2:r1)
        {
            System.debug('Review name='+r2.name);
            System.debug('review rating='+r2.Rating__c);
        }
    }
}