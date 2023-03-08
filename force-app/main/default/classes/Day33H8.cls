public class Day33H8 {
Date d11 = system.today();
    public void birthday()
    {
        list<Candidate__c> cand = [SELECT Id, Name, Email__c,Date_of_Birth__c
                                   FROM Candidate__c  
                                   WHERE DAY_IN_MONTH(Date_of_Birth__c) =: d11.day()   
                                                AND CALENDAR_MONTH(Date_of_Birth__c) =:   d11.month()];
        
        for(Candidate__c c: cand)
        {
            system.debug(c);
        }
    }
}