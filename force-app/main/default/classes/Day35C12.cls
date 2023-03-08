public class Day35C12 {
Job_Application__c ja=[select Name,	Status__c,Total_Rating__c,
                      Candidate__r.Last_Name__c, Candidate__r.Phone__c,
                      Position__r.Name,Position__r.Functional_Area__c
                      from Job_Application__c where id='a025g000009XYwYAAW'];
    public void displayjobapplication()
    {
        System.debug('Name='+ja.Name);
        System.debug('status='+ja.Status__c);
        System.debug('total rating='+ja.Total_Rating__c);
        System.debug('Candidate name='+ja.Candidate__r.Last_Name__c);
        System.debug('candidate phone='+ja.Candidate__r.Phone__c);
        System.debug('Position name='+ja.Position__r.Name);
        System.debug('position frunctional area='+ja.Position__r.Functional_Area__c);
    }
}