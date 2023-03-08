public class accountaura {
@AuraEnabled
    public static list<account> readAccounts(){
        list<account> accs=[select Name,Industry,Phone from account limit 10];
        return accs;
    }
}