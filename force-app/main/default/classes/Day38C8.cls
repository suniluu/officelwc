public class Day38C8 implements Schedulable {
    
    
    public void execute(SchedulableContext sc)
    {
        list<Job_Application__c>jp=[select name,Status__c,Total_Rating__c,
                                    (select rating__c from Reviews__r)
                                    from Job_Application__c where Status__c='Schedule Interview'];
        list<Review__c> r1=new list<Review__c>();
        
        
        for(Job_Application__c jp1:jp)
        {
            list<Review__c> jpreview=jp1.Reviews__r;
            if(jpreview.size()>0)
            {
                for(Review__c r:jpreview)
                {
                    r.Rating__c=4;
                    r1.add(r); 
                }
            }
            else
            {
                Review__c rating=new Review__c(rating__c=4);
                r1.add(rating);
            }     
        }
        upsert r1;
    }   
}