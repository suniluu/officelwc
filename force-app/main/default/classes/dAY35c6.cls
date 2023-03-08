public class dAY35c6 {
    Contact c=[select name,Email,phone,
               Account.Owner.Name
               from contact  where name='Adhi V'];
    public void displayOwnername()
    {
        System.debug('Contact Name='+c.Firstname);
        system.debug('Contact phone='+c.phone);
        System.debug('Contact email='+c.Email);
        System.debug('Account owner name='+c.Account.Owner.Name);
    }
}