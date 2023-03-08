public class Day34C7 {
list<Account> a=[select Name,AnnualRevenue,
          (select StageName from Opportunities
           where StageName='Closed Won')
           from Account
            where AnnualRevenue>50000];
  public void display()
  {
      for(Account a1:a)
      {
      System.debug('Account='+a);
      List<Opportunity> o=a1.Opportunities;
      for(Opportunity op:o)
      {
          System.debug('opportunity='+o);
      
      }
  }
}
}