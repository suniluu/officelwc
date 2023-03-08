public with sharing class getaccounts3 {
    public getaccounts3() {

    }
    @AuraEnabled (Cacheable=true)
    public static List<Account> getAccounts2(){
      List<Account> accs=[select id,Name,Type,Industry
      From Account
      WITH SECURITY_ENFORCED
      LIMIT 20];
      return accs;  
    }
}
