@istest
public class contacttest {
@istest
    private static void method1()
    { 
        list<Candidate__c> clist=new list<Candidate__c>();
        Candidate__c ca1=new Candidate__c();
        ca1.First_Name__c='can';
        ca1.Last_Name__c='A';
        ca1.Email__c='can1@gmail.com';
         clist.add(ca1);
       Candidate__c ca2=new Candidate__c();
         ca2.First_Name__c='can';
        ca2.Last_Name__c='B';
        ca2.Email__c='can2@gmail.com';
        clist.add(ca2);
        insert clist;
        
        list<Contact> upcon=[select FirstName from Contact where FirstName like 'can%'];
      /*  for(Contact c:upcon)
        {
        system.assertEquals('can', c.FirstName);
        }*/
        integer x=upcon.size();
        system.assertEquals(2, x);        
    }
}