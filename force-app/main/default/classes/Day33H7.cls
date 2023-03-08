public class Day33H7 {
public void displayleadrecords()
    {
        list<Lead> l2 =[select Industry,Name
                       from Lead
                       where Directions__c='South' limit 8 offset 4];
        
        for(Lead l1:l2)
        {
            system.debug('Lead records are:'+l1);
        }
    }
}