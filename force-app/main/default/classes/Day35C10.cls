public class Day35C10 {
    
    list<Case> c=[select CaseNumber,Reason,Status,
                   Account.Name,Account.AnnualRevenue
                   from Case where Status='Closed'];
    
    public void displayClosedCases()
    {
        for(Case c1:c)
        {
            system.debug('case number:'+c1.CaseNumber);
            system.debug('Cases status:'+c1.Status);
            system.debug('Account Name:'+c1.Account.Name);
            system.debug('Account Annual Revenue:'+c1.Account.AnnualRevenue);
        }
    }
    
    
}