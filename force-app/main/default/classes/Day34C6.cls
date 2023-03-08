public class Day34C6 {

    	Position__c p=[select name,Min_Pay__c,Max_Pay__c,Functional_Area__c,
                       (select 	Name,No_Of_Reviews__c,Total_Rating__c from Job_Applications__r)
                       from Position__c where Name='ADMIN'];
    public void display()
    {
        list<Job_Application__c> ja=p.Job_Applications__r;
        for(Job_Application__c p1:ja)
        {
            System.debug('position='+p1);
         list<Review__c> r=new list<Review__c>();
            r=[select Rating__c from Review__c
              where Job_Application__c=:p1.Id];
            for(Review__c r1:r) 
            {
                System.debug(r1);
            }
        }
    }
}