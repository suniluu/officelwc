public class Day36H7 {
    public void mergingCustomobject(){
        Position__c p=[select name,Functional_Area__c,Min_Pay__c,Max_Pay__c
                       from Position__c where name='Ap1'];
        Position__c p1=[select name,Functional_Area__c,Min_Pay__c,Max_Pay__c,
                        (select name,Status__c from Job_Applications__r)
                        from Position__c where name='IT 3']; 
       
        list<Job_Application__c> ja1=p1.Job_Applications__r;
        for(Job_Application__c ja11:ja1)
        {
          
        ja11.Position__c=p.id;
         update ja11;   
        }
       
        delete p1;
        
        
    }
}