public with sharing class AccountCreation {
    public AccountCreation() {

    }
    @AuraEnabled
    public static Account createAccount(Account accountRecObj){
        try {
            insert accountRecObj;
            return accountRecObj;
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
    @AuraEnabled
    public static list<Account> createAccounts(list<Account> accountList){
        insert accountList;
        return accountList;
    }
}
