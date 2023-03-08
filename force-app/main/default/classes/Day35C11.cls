public class Day35C11 {
    contact c=[select lastname,phone,email,
               account.name,account.industry,Account.annualrevenue
               from contact where id='0035g00000fsPGDAA2'];
  list<Contact> c1=[select lastname,phone,email,
                    account.name,account.industry,account.phone
                    from Contact where id='0035g00000fsPGDAA2' and account.phone='99899899'] ;
    list<Contact> c3=[select lastname,phone,email,
                    account.name,account.industry,account.phone
                    from Contact];
 public void displaycontactrecords()
 {
     System.debug(c);
     System.debug(c1);
     System.debug(c3);
 }
}