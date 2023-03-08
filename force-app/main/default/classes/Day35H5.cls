public class Day35H5 {
list<list<Sobject>> Sobjs=[Find 'Hyderabad*' in all fields
                        Returning Account(name,BillingAddress),
                          Contact(name,MailingAddress),
                           Candidate__c(name,City__c) ];
    list<account> a=new list<account>();
    list<contact> c=new list<Contact>();
    list<Candidate__c> c1=new list<Candidate__c>();
    public void displayrecords()
    {
       a=sobjs[0];
       c=sobjs[1];
       c1=sobjs[2];
        System.debug('Account Records with Hyderabad Term::');
        for(Account a1:a)
        {
            System.debug(a1);
        }
        System.debug('contact Records with Hyderabad Term::');
        for(contact c1:c)
        {
            System.debug(c1);
        }
        System.debug('Candidate Records with Hyderabad Term::');
        for(Candidate__c C2:c1)
        {
            System.debug(c2);
        } 
    }
}