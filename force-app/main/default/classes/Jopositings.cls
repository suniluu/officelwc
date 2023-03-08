public class Jopositings {
 
    @AuraEnabled
    public static Job_Posting__c readjp(id pid,string emp)
    {
        
        Job_Posting__c jp=new Job_Posting__c();
        jp.Empolyment_Website__c=emp;
        jp.Position__c=pid;
        insert jp;
        return jp;
    }


}