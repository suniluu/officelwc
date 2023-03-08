public class Day33H2 {
    list<Opportunity> opp1=new list<Opportunity>();
    public void displayOpportunityrecords()
    {
        opp1=[select Name,StageName,Amount 
              from Opportunity 
              where Amount>1000000  AND StageName='Closed Won'];
        
        for(Opportunity op1:opp1)
        {
            system.debug(op1);
        }
    }
    
}