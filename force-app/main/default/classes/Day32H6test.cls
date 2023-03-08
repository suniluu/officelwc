@istest
public class Day32H6test {
@istest
    private static void method()
    {
                list<lead>ll=new list<lead>();
        lead ll1=new lead(firstname='v',lastname='tereed',company='ccxtest');
        lead ll2=new lead(firstname='a',lastname='teared',company='ccxtest1');
        ll.add(ll1);
        ll.add(ll2);
        insert ll;
        Day32H6.displayLeadrecords();
        list<Lead> l=[select name,	company
                 from Lead
                 Where name Like '________' And name Like '%d%'];
        integer x=l.size();
        system.assertEquals(2,x);
    }
}