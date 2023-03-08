public with sharing class AccountController3 {
    public AccountController3() {

    }
    @AuraEnabled (Cacheable=true)
    public static List<Account> getAccounts2(){
      List<Account> accs=[select id,Name,Type,Industry
      From Account
      WITH SECURITY_ENFORCED
      LIMIT 10];
      return accs;  
    }
}
