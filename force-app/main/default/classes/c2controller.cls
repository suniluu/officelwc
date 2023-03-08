public class c2controller
{
    Account A=new Account(Name='ABC LTD',Industry='Electronics');
    Account B=[select Name,Industry from Account where Name='United Oil & Gas, UK'];
    
    public Account getnewrec()
    {
        return A;
    }
    public Account getexistingrec()
    {
        return B;
    }
}