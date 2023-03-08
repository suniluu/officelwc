@istest
public class Day32H5test {
@istest
    private static void  method()
    {
        
        list<lead>ll=new list<lead>();
        lead ll1=new lead(firstname='v',lastname='tes',company='ccxtest');
        lead ll2=new lead(firstname='a',lastname='tes',company='ccxtest1');
        ll.add(ll1);
        ll.add(ll2);
        insert ll;
        Day32H5.displayLeadrecords();
        list<Lead> l=[select name,	AnnualRevenue,	Status
                 from Lead
                 Where name Like '_____'];
        integer x=l.size();
        system.assertEquals(2, x);
    }
}