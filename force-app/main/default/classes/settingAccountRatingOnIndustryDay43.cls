public class settingAccountRatingOnIndustryDay43
{
    public static void updatingAccount(list<account> acc)
    {
        for(account a:acc)
        {
            if(a.Industry=='Banking' || a.Industry=='Healthcare')
            {
                a.Rating ='Warm';
            }
      
       }
    }
    
    public static void preventingAccountDeletion(list<account> acc1)
    {
        list<id> accid = new list<id>();
        for(account acc2:acc1)
        {
            accid.add(acc2.id);
        }
        list<account> acc3 =[select id,	No_Of_Contacts__c,
                             (select lastname,AccountId from contacts)
                             from account where id in:accid];
        list<contact> c22=new list<contact>();
        for(account acc4:acc3)
        {
            
            if(acc4.contacts.size()>2)
            {
                acc4.No_Of_Contacts__c.adderror('You cant delete this reocrd');
            }
        }
    }
    //creating opportunity
    public static void updatingaccountopportunities(list<account> accs)
    {
        list<account> acc = new list<account>();
        for(account accs1:accs)
        {
            acc=[select name,
                 (select name from opportunities)
                 from account limit 1];
            for(account acc1:acc)
            {
                if(acc1.opportunities.size()<1)
                {
                    opportunity op =new opportunity();
                    op.Type='New Customer';
                    op.Name=op.AccountId+'testing';
                    op.AccountId=acc1.Id;
                    op.StageName='Qualification';
                    op.CloseDate=system.today();
                    
                    insert op;
                }
            }
        }
    }
    
}