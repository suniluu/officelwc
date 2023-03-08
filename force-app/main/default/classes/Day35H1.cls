public class Day35H1 {
list<Opportunity> op=[select Name,Amount,StageName,
                     account.Industry
                     from Opportunity where Amount>450000 And StageName='Prospecting' And account.Industry='Agriculture'];
    public void displayOpportunityrecords()
    {
        For(Opportunity op1:op)
        {
            System.debug('Name='+op1.name);
            System.debug('Amount='+op1.StageName);
            System.debug('account industry='+op1.account.Industry);
        }
    }
}