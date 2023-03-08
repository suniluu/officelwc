public class Day35H6 {
list<list<Sobject>> sobjs=[Find 'Manager*' in all fields
                          Returning Position__c(Name),
                          Candidate__c(name,Experience__c),
                          User(Name,title)];
    list<Position__c> p1=new list<Position__c>();
    list<Candidate__c> c1=new list<Candidate__c>();
    list<User> u1=new list<User>();
   public void displayrecords()
   {
       p1=sobjs[0];
       c1=sobjs[1];
       u1=sobjs[2];
       System.debug('Position records with manager term::');
       for(Position__c p11:p1)
       {
           System.debug(p11);
       }
       System.debug('candidate records with manager term::');
       for(Candidate__c c11:c1)
       {
           System.debug(c11);
       }
       System.debug('user records with manager term::');
       for(User u11:u1)
       {
           System.debug(u11);
       } 
 
       
   }
}