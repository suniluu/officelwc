public with sharing class ContactController {
    @AuraEnabled
    public static Contact getContact() {
        return [select Id, FirstName, LastName from Contact Limit 1];
    }
}