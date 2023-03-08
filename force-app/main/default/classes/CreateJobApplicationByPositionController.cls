public class CreateJobApplicationByPositionController
{
    @AuraEnabled
    public static Job_Application__c createjobap(string status ,id pid)
    {
        Job_Application__c jap=new Job_Application__c();
        jap.Status__c=status;
        jap.Position__c=pid;
        
        insert jap;
        return jap;
    }
}