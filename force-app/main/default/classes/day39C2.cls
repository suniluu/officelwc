public class day39C2 {
  @future
    public static void reviews()
    {
       list<Job_Application__c>jp=[select name,Status__c,Total_Rating__c,
                                    (select rating__c from Reviews__r)
                                    from Job_Application__c ];
        list<Job_Application__c> updatejp=new list<Job_Application__c>();
        
        for(Job_Application__c jp1:jp)
        {
         list<Review__c> r=jp1.reviews__r;
           boolean b=false;
        for(Review__c r1:r)
        {
           if(r1.Rating__c>=3)
           {
               b=true;
           }
        }
        if(b==False)
        {
           jp1.Status__c='Rejected';
           updatejp.add(jp1); 
        }
        
        }
        update updatejp;
    }
    

}