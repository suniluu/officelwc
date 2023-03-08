public class Candidatehandler {
    public static void candidatecontact(list<candidate__c> c1)
    {
list<contact> newcontacts=new list<contact>();
    for(candidate__c cand:c1)
    {
        contact c=new contact();
        c.lastname=cand.last_name__c;
        c.firstname=cand.First_Name__c;
        c.email=cand.email__c;
        newcontacts.add(c);
        
    }
    insert newcontacts;
}
}