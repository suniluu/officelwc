public class Day32H7 {
    public static void displayleadrecords()
    {
        list<Lead> l=[select NAME,Industry,Date__c
                      From Lead 	
                      Where Rating='Hot' And 	LeadSource='Web' And 	Date__c<=LAST_N_FISCAL_YEARS:1];
        for(Lead l1:l)
        {
            System.debug(l1);
        }
    }
    
}