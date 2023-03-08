public with sharing class AccountController11 {
    public AccountController11() {

    }
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccount(){
        return [Select Name,Industry,Type,Active__c
        from Account
        ];
     }
     @AuraEnabled
    public static void deleteaccount(List<Id> selaccountid){
        List<Account> canList = new List<Account>();
        canList = [Select id from Account where id in:selaccountid];
        if(canList != null && canList.size()>0){
            delete canList;
        }
}
}

}
