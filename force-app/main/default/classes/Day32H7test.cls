@istest
public class Day32H7test {
@istest
    private static void method()
    {
       
             list<lead>ll=new list<lead>();
        lead ll1=new lead(firstname='abhi',lastname='v',company='ccxtest',Rating='Hot',LeadSource='Web',Date__c=Date.newInstance( 2021, 1, 1 ));
        lead ll2=new lead(firstname='adhi',lastname='d',company='ccxtest1',Rating='Hot',LeadSource='Web',Date__c=Date.newInstance( 2021, 1, 1 ));
        ll.add(ll1);
        ll.add(ll2);
        insert ll;
        Day32H7.displayleadrecords();
         list<Lead> l=[select NAME,Industry,Date__c
                      From Lead 	
                      Where Rating='Hot' And 	LeadSource='Web' And 	Date__c<=LAST_N_FISCAL_YEARS:1];
        integer x=l.size();
        system.assertEquals(2,x);
    }
}