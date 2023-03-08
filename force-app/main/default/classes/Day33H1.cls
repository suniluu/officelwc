public class Day33H1 {
list<Lead> leads=new list<lead>();
    public void displayLeadrecords()
    {
        leads=[select name 
               from lead 
               Where  name like '______' AND name like '%s%' limit 5];
        
        for(lead l1: leads )
        {
            system.debug(l1);
        }
    }

}