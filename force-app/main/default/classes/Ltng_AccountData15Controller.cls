public class Ltng_AccountData15Controller {
    @AuraEnabled
public static list<account> readAccounts(string searchIndus)
{
    String searchIndustry=searchIndus;
    List<Account> accs=[select name,Industry,phone from account where Industry=:searchIndustry];
    return accs;
    
}
}