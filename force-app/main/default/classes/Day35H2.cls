public class Day35H2 {

    list<Contact> c1=[select Name,Phone,MobilePhone,
                     account.Name,account.industry
                     from contact where account.industry='Banking'];
    public void displaycontacts()
    {
        for(Contact c:c1)
        {
            System.debug('Name='+c.Name);
            System.debug('Phone='+c.Phone);
            System.debug('MobilePhone='+c.MobilePhone);
            System.debug('account name='+c.account.Name);
            System.debug('account industry='+c.account.industry);
        
        }
    }
}