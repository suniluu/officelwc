trigger createcontact on Account (after insert) {
   /* list<contact> con=new list<contact>();
    list<account> a2=new list<account>();
    list<account> a5=new list<account>();
    Contact c=new Contact();
for(account a:trigger.new)
{
    
    c.lastname=a.name+'contact';
    c.Phone='7575575';
    c.accountid=a.Id;
    con.add(c);
   
}
    insert con;
    list<account> accounts=new list<account>();
    list<account> accs=[select name,Contact_Name__c  from account where id in:trigger.new ];
    
    for(account a:accs)
    {
        contact c =[select lastname from contact where AccountId=:a.id limit 1];
        a.Contact_Name__c=c.lastname;
        accounts.add(a);
        
    }
    update accounts;*/
}