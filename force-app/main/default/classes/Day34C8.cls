public class Day34C8 {
   list<Opportunity> op=[select Amount,StageName,
                   (select Name from OpportunityLineItems)
                   from Opportunity where name='Ip14'];
    public void display()
    {
        for(Opportunity op1:op)
        {
        System.debug(op1);
        system.debug('Opportunity='+op);
        list<OpportunityLineItem> p=op1.OpportunityLineItems;
        for(OpportunityLineItem p1:p)
        {
            System.debug(p1.Name);
        }
        }
    }

}