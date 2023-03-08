public class AccountMap {
@AuraEnabled
    public static list<account> accounts(Id aid)
    {
       
        list<account> acc =[select BillingStreet,BillingCity,BillingPostalCode,BillingState,BillingCountry from account where Id=:aid  ];
        return acc;
        
    }
}