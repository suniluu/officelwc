public class Day32H1 {
    public static void displaypositionsrecords(){
        list<Position__c> p=[Select name,Status__c,Functional_Area__c
                             from Position__c
                             where 	Min_Pay__c<=25000 And 	Location__c IN ('Hyderabad,Telangana','Vizag,AndhraPradesh') and Hiring_Manager__c ='0055g00000FJLN5AAP'];
        
        
        for(Position__c p1:p)
        {
            System.debug(p1);
        }
    }
}