public class Day35C5 {
List<Account> a1=[select name,Industry,NumberOfEmployees
                 from account
                 where industry='Apparel' and NumberOfEmployees>100];
    public void displayAccountRecords()
    {
        for(Account a:a1)
        {
            System.debug('Account name='+a.Name);
             System.debug('Account industry='+a.Industry);
             System.debug('Account No of empolyees='+a.NumberOfEmployees);
        }
    }
}