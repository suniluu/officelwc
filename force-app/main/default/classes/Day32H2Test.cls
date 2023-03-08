@istest
public class Day32H2Test {
@istest
    private static void method()
    {
        list<lead>ll=new list<lead>();
        lead ll1=new lead(lastname='test',company='ccxtest',rating='hot',LeadSource='Web',Date__c=system.today()-2);
        lead ll2=new lead(lastname='test1',company='ccxtest1',rating='hot',LeadSource='Web',Date__c=system.today()-2);
        ll.add(ll1);
        ll.add(ll2);
        insert ll;
        
        Day32h2.displayLeadrecords();
        list<Lead> l=[select NAME,Date__c
                      From Lead 	
                      Where Rating='Hot' And LeadSource='Web' And Date__c=Last_N_Days:2];
        
      /*  for(Lead l1:l)
        {
            System.assertEquals('Hot',l1.Rating);
            System.assertEquals('Web',l1.LeadSource);
          //  System.assertEquals(Last_N_Days:2,l1.Date__c);
          
        }*/
        integer x=l.size();
        System.assertEquals(2,x);
    }
}