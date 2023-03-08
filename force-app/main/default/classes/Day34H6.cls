public class Day34H6 {
    list<account> aa=[select name,industry,annualrevenue,
                    (select Reason,Status from cases where status='Closed' and ClosedDate= LAST_N_MONTHS:1)
                    from account ];
    public void displayaccountrecords()
    {
        for(account a1:aa)
        {
            System.debug('account='+a1.name);
            list<case> c=a1.cases;
            for(case c1:c)
            {
                System.debug(c1);
                System.debug('Cases='+c1.status);
            }
        }
    }

}