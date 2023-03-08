public class Day35C13 {
list<list<sobject>> sobjs=[FIND 'CCX*' in all fields
                          RETURNING LEAD(NAME,PHONE,COMPANY),
                          ACCOUNT(NAME,PHONE,ANNUALREVENUE),
                          CONTACT(LastName,Email),
                          Position__c(Name,Job_Description__c)];
    list<lead> lds=new list<lead>();
    list<account> accs=new list<account>();
    list<contact> cons=new list<Contact>();
    list<Position__c> pos=new list<Position__c>();
public void displaySoslresult()
{
    lds=sobjs[0];
    accs=sobjs[1];
    cons=sobjs[2];
    pos=sobjs[3];
    System.debug('Lead Records with ccx term::::');
    for(lead l:lds)
    {
        System.debug(l);
    }
     System.debug('Account Records with ccx term::::');
    for(Account a:accs)
    {
        System.debug(a);
    }
     System.debug('Contact Records with ccx term::::');
    for(contact c:cons)
    {
        System.debug(c);
    }
     System.debug('position Records with ccx term::::');
    for(Position__c p:pos)
    {
        System.debug(p);
    }
}    
}