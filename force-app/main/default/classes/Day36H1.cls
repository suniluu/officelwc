public class Day36H1 {
public void setsavepoint()
{
    contact c=[select name,phone,Email
              from contact where name='Anand' ];
    System.debug('contact data='+c);
    savepoint s=database.setSavepoint();
    c.email='abhi@gmail.com';
    update c;
   
      c=[select name,phone,Email
              from contact where name='Anand' All ROWS];
    System.debug('contact data='+c);
    savepoint s1=database.setSavepoint();
    c.email='abhiadhi@gmail.com';
    update c;
    delete c;
      c=[select name,phone,Email
              from contact where name='Anand' All ROWS];
     System.debug('contact data='+c);
    database.rollback(s);
    c=[select name,phone,Email
              from contact where name='Anand' All ROWS];
    System.debug('contact data='+c);
    
}
}