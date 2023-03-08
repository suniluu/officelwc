public class Day32H2 {
    
    public static void displayLeadrecords()
    {
        list<Lead> l=[select NAME,Date__c
                      From Lead 	
                      Where Rating='Hot' And LeadSource='Web' And Date__c=Last_N_Days:2];
        for(Lead l1:l)
        {
            System.debug(l1);
        }
    }
}