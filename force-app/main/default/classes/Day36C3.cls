public class Day36C3 {
    public void setsave(){
Account a=[select name,phone from account where name='abhi'];
    System.debug('Account data='+a);
        Savepoint sp=Database.setSavepoint();
        a.Phone='9999';
        Update a;
        a=[select name,phone from account where name='abhi'];
        System.debug('account='+a);
        Savepoint sp2=database.setSavepoint();
        a.Phone='84884';
        update a;
           a=[select name,phone from account where name='abhi'];
        System.debug('account='+a);
        database.rollback(sp);
           a=[select name,phone from account where name='abhi'];
        System.debug('account='+a);
}
}