public class Day32C3 {
     public void displayrecords()
     {
         list<account>accounts1=[Select name,AnnualRevenue,Industry
                                from account
                               where AnnualRevenue>20000 And Industry='Education'];
         list<account>accounts2=[Select name,AnnualRevenue,Industry
                                from account
                               where AnnualRevenue>20000 Or Industry='Education'];
         
        list<Account> accounts3=[select Name,AnnualRevenue ,Industry 
                                 from Account 
                                 where NOT industry='Education'];
        list<Account> accounts4=[select Name,AnnualRevenue ,Industry
                                 from Account 
                                 where Branches__c INCLUDES ('Hyderabad','Delhi')];
        list<Account> accounts5=[select Name,AnnualRevenue ,Industry 
                                 from Account 
                                 where Branches__c EXCLUDES ('Mumbai','Chennai')];
        list<Account> accounts6=[select Name,AnnualRevenue ,Industry 
                                 from Account 
                                 where industry IN ('Education','Electronical')];
        list<Account> accounts7=[select Name,AnnualRevenue ,Industry 
                                 from Account 
                                 where industry NOT IN ('Education','Electronical')];
         system.debug('AND Result::');
         for(Account a:accounts1)
         {
             System.debug(a);
         }
         system.debug('OR Result::');
         for(Account a:accounts2)
         {
             System.debug(a);
         }
         system.debug('Not Result::');
         for(Account a:accounts3)
         {
             System.debug(a);
         }
         system.debug('Includes Result::');
         for(Account a:accounts4)
         {
             System.debug(a);
         }
         system.debug('excludes Result::');
         for(Account a:accounts5)
         {
             System.debug(a);
         }
         system.debug('IN Result::');
         for(Account a:accounts6)
         {
             System.debug(a);
         }
         system.debug('NOT IN Result::');
         for(Account a:accounts7)
         {
             System.debug(a);
         }
         
     }
}