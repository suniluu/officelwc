public class EmailAlertForCandAndPos {
   
  /* public static void EmailsAlert(list<Job_Application__c> japs)
    {
        list<id> jids=new list<id>();
        for(Job_Application__c ja:japs){
            jids.add(ja.id);
        }
        list<Job_Application__c> japs2 =[select name,status__c,Candidate__r.Email__c,Position__r.owner.email
                                         from Job_Application__c 
                                         where Status__c ='Schedule Interview' AND Candidate__r.Email__c!=NULL AND Id  in:jids ];
        list<string> shortlistedEmail =new list<string>();
        
        for(Job_Application__c jap1:japs2)
        {
                  shortlistedEmail.add(jap1.Candidate__r.Email__c);
                  shortlistedEmail.add(jap1.Position__r.owner.email);
        }
            messaging.SingleEmailMessage emails = new messaging.SingleEmailMessage();
            emails.setToAddresses(shortlistedEmail);
            emails.setSubject('your appliation has been scheduled for interview');
            emails.setPlainTextBody('You had been shortlisted for interview ,kinldy attend the interview on 13-11-2022');
            messaging.sendEmail(new messaging.SingleEmailMessage[]{emails});
        }
    
*/


    public static void EmailsAlert(list<Job_Application__c> japs)
    {
        list<id> jobids=new list<id>();
        for(Job_Application__c ja:japs){
            jobids.add(ja.id);
        }
        list<Job_Application__c> japs2 =[select name,status__c,Candidate__r.Email__c,Position__r.owner.email
                                         from Job_Application__c 
                                         where Status__c ='Schedule Interview' AND Candidate__r.Email__c!=NULL AND Id  in:jobids ];
        list<string> semails =new list<string>();
        
        for(Job_Application__c jap1:japs2)
        {
                  semails.add(jap1.Candidate__r.Email__c);
                  semails.add(jap1.Position__r.owner.email);
        }
            messaging.SingleEmailMessage emails = new messaging.SingleEmailMessage();
            emails.setToAddresses(semails);
            emails.setSubject('scheduled  interview');
            emails.setPlainTextBody('please  attend the interview ');
            messaging.sendEmail(new messaging.SingleEmailMessage[]{emails});
        }
}