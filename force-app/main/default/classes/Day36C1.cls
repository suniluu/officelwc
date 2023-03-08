public class Day36C1 {

     public void dmlinsert()
     {
         //1.Insert
         //1.1Insert single record using standalone
         Account a=new Account(name='DmlAccount',industry='Electronics',phone='558558');
         insert a;
         //1.2 Insert single record using database
         Position__c p=new Position__c(name='Dml position',Min_Pay__c=50000,Location__c='Hyderabad,Telangana',Functional_Area__c='Information Technology');
         Database.insert(p);
         //1.3 Insert list of record
         Account a1=new Account(Name='Dml Account1',industry='Electronics',phone='5465456');
          Account a2=new Account(Name='Dml Account2',industry='Electronics',phone='74684647684');
         Account a3=new account (name='Dml Account3',industry='Electronics',phone='656546');
         list<account> accs=new list<Account>();
         accs.add(a1);
         accs.add(a2);
         accs.add(a3);
         insert accs;
        }
    public void dmlupdate()
    {
        //2.Update
        //2.1 Updating single record
        Account a4=[select name,industry,phone
                   from account where name='p1'];
        System.debug('Before update account='+a4);
        a4.Phone='99827564';
        update  a4;
    list< account> a5=[select name,industry,phone
                   from account where name like '%test%'];
        list<account> l=new list<Account>();
        for(Account ac:l)
        {
            ac.Phone='54545454';
            if(ac.AnnualRevenue<1000000)
            {
                ac.AnnualRevenue=ac.AnnualRevenue+200000;
            }
            l.add(ac);
        }
        update l;
      }
    public void dmlupsert()
    {
        Account a1=new Account(Name='Upsert1',industry='Electronics',phone='54541201521');
          Account a2=new Account(Name='Upsert2',industry='Education',phone='43521341');
         Account a3=new account (name='upsert3',industry='agriculture',phone='57484421');
        list<account> accs2=new list<account>();
        accs2.add(a1);
        accs2.add(a2);
        accs2.add(a3);
        list<account> updates=[select name,industry,phone,annualrevenue
                   from account where name like '%test%'];
        for(account ac:updates)
        {
            ac.Phone='64545';
            accs2.add(ac);
        }
        upsert accs2;
    }
    public void dmldelete()
    {
        list<position__C> delpos=[select name,Min_Pay__c
                                 from Position__c where name='Ap1'];
        delete delpos;
        list<position__C> delpos1=[select name,Min_Pay__c
                                 from Position__c where name='AP1' and isdeleted=true];
        System.debug('Deleted position='+delpos1);
    }
    public void dmlundelete()
    {
         list<position__C> delpos=[select name,Min_Pay__c
                                 from Position__c where name='Ap1' ALL ROWS];
        undelete delpos;
        System.debug('Undeleted position='+delpos);
    }
    public void dmlmerge()
    {
        account a1=[select name,industry,phone,annualrevenue
                   from account where name='abhi'];
        account a2=[select name,industry,phone,annualrevenue
                   from account where name='dxc'];
        merge a1 a2;
        account a3=[select name,industry,phone,annualrevenue
                   from account where name='abhi'];
        System.debug('Merge account='+a3);
    }
}