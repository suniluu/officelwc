public class Day34H1 {
    
    list<account> accs=[select name,industry,annualrevenue,
                       (select name,amount,	StageName from Opportunities where amount>1000000 and StageName='Closed Lost')
                       from account where name like'%United%'];
    public void displayaccountrecords()
    {
           for(account a1:accs)
           {
               System.debug('Accountname='+a1.name);
               System.debug('account industry='+a1.industry);
               System.debug('Opportunities');
               list<Opportunity> op=a1.Opportunities;
               for(Opportunity op1:op)
               {
                   System.debug(op1.Name);
                   System.debug(op1.StageName);
               }
           }
    }

}