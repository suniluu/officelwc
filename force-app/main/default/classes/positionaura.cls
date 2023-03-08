public class positionaura {
@AuraEnabled
    public static list<position__c> positionrecords()
    {
        list<position__c> pos=[select Name,Functional_Area__c,Min_Pay__c,Max_Pay__c from position__c limit 10];
        return pos;
    }
}