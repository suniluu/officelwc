public class datatablecontroller {
@AuraEnabled
    public static list<Contact> readcontacts(Id aid)
    {
        list<Contact> cons=[select LastName,Phone,Email
                                             from Contact where AccountId=:aid];
        return cons;
    }
}