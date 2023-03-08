public class Day35H3 {
list<Job_Posting__c> jp=[select Name,
                        Position__r.Name,Position__r.Functional_Area__c,Position__r.Min_Pay__c
                        from Job_Posting__c];
    public void displayjobposting()
    {
        for(Job_Posting__c jp1:jp)
        {
            System.debug('Name='+jp1.Name);
            System.debug('position name='+jp1.Position__r.Name);
             System.debug('position Funcational area='+jp1.Position__r.Functional_Area__c);
             System.debug('position min pay='+jp1.Position__r.Min_Pay__c);
        }
    }
}