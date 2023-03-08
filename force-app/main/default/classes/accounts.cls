public class accounts {
    public static void accounts(){
    list<Position__c> acc=[select name,Functional_Area__c,Status__c,no_of_vacancies__c,
                          (select name,status__c from Job_Applications__r)
                          from Position__c where 	Status__c='Closed-NotApproved'];
        list<Job_Application__c> jp1=new list<Job_Application__c>();
    for(Position__c p:acc)
        {
            list<Job_Application__c> jp=p.Job_Applications__r;   
            for(Job_Application__c j:jp)
            {
            j.Status__c='Rejected';
            jp1.add(j);
        }
        }
        update jp1;
    }
}