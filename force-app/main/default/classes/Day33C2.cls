public class Day33C2 {
    list<Account> Accounts1=[Select Name,AnnualRevenue,
                            Phone,Industry From Account
                            Order by Industry];
    
    list<Account> Accounts2=[Select Name,AnnualRevenue,
                            Phone,Industry From Account
                            Order by Industry Desc];
    list<Account> Accounts3=[Select Name,AnnualRevenue,Phone,
                            Industry from Account
                            Offset 5];
    List<account> accounts4=[select name,annualrevenue,phone,
                           industry from account
                           limit 6];
    List<account> accounts5=[select name,annualrevenue,
                            phone,industry from account
                            limit 4 offset 3];
    list<position__c> positions=[Select name,Min_Pay__c,Status__c,Location__c
                    from Position__c
                    Order By Location__c asc,Status__c desc];
    /* pos=[Select Location__c,count(Name)
                    from Position__c
                   Group By Location__c ];*/
    
 public void orderAccountRecords()
 {
     System.debug('Ordered accounts by industry ascending');
      for(Account a:accounts1)
      {
          System.debug(a);
      }
     System.debug('Ordered accounts by industry descending');
      for(Account a:accounts2)
      {
          System.debug(a);
      }
     System.debug('Ordered Position by Location Then status ascending ');
     for(position__c p:positions)
     {
         System.debug(p);
     }
      System.debug('Ordered accounts with offset 5');
      for(Account a:accounts3)
      {
          System.debug(a);
      }
      System.debug('Ordered accounts with limit 6');
      for(Account a:accounts4)
      {
          System.debug(a);
      }
      System.debug('Ordered accounts with limit 4 offset 3');
      for(Account a:accounts5)
      {
          System.debug(a);
      }
 }
    
}