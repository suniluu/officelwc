public class Day35C9 {
contact c=[select name,phone,email,
          Owner.Profile.name
          from contact where name='Adhi V'];
    public void display()
    {
        System.debug('Name='+c.Name);
        system.debug('phone='+c.Phone);
        System.debug('email='+c.email);
        System.debug('Contact owner name='+c.Owner.Profile.name);
    }
}