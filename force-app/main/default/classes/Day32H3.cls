public class Day32H3 {
    
    public static void displayPositionrecords(){
        list<Position__c> p=[Select name,Status__c,Location__c
                             from Position__c
                             where 	Min_Pay__c<50000 And 	Location__c !='Hyderabad,Telangana'];
        
        
        for(Position__c p1:p)
        {
            System.debug(p1);
        }
    }
}