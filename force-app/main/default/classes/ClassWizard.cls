public class ClassWizard {
 Account a=new Account();
    Contact c=new Contact();
    Opportunity o=new Opportunity();
    public Account  geta()
    {
        return a;
    }
    public Contact  getc()
    {
        return c;
    }
    public Opportunity  geto()
    {
        return o;
    }
    public pageReference gotopage1()
    {
        return Page.page1;
    }
    public pageReference gotopage2()
    {
        return Page.page2;
    }
    public pageReference gotopage3()
    {
        return Page.page3;
    }
    public pageReference gotopage4()
    {
        return Page.page4;
    }
    public pageReference savenow()
    {
        insert a;
        c.AccountId=a.id;
        insert c;
        O.AccountId=a.id;
        insert o;
        return Page.page5;
    }
}