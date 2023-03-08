public class day38H2 implements Schedulable{
     date dateoftoday=system.today();
    public void execute(SchedulableContext sc){
        list<Candidate__c> candidates=[select name,	Date_Of_Birth__c,Email__c
                                      from Candidate__c
                                      where DAY_IN_MONTH(Date_Of_Birth__c)=:dateoftoday.day()
                                      And CALENDAR_Month(Date_Of_Birth__c)=:dateoftoday.month()];
        for(Candidate__c birthdayofcandidate:candidates)
        {
             task t=new Task();
            t.OwnerId='0055g00000FJLN5AAP';
            t.subject='Send birthday wishes';
            insert t;
            
        }
        
    }

}