public class Day34H2 {
list<Account> a=[select name,industry,annualrevenue,
                (select phone,email from contacts)
                from account where industry='Electronics'];
    public void displayaccountrecords()
    {
        for(account a1:a)
        {
            System.debug('Account Name'+a1.Name);
    System.debug('Account industry='+a1.industry);
            list<contact> con=a1.contacts;
            for(contact c1:con)
            {
                System.debug('contact phone='+c1.phone);
                system.debug('contact email='+c1.Email);
            }
  
        }
    }
}