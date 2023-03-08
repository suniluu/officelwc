public with sharing class AccountController4 {
    public AccountController4() {

    }
     @AuraEnabled (Cacheable=true)
        public static List<Account> getAccountsInd(string Industry){
          List<Account> accs=[select id,Name,Type,Industry
          From Account
          where Industry=:Industry
          WITH SECURITY_ENFORCED
          LIMIT 10];
          return accs;  
        }
    }
    
