public class Ltng_Lead16Controller {
    @AuraEnabled
public static list<Lead> readLeads(string searchIndus)
{
 String searchIndustry=searchIndus;
    list<Lead> leads=[select name,Industry,Phone from lead where Industry=:searchIndustry];
    return leads;
}
}