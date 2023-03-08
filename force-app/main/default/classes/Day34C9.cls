public class Day34C9 {
account a=[select Name,Type,Industry,
               (select CaseNumber,	Status,	Priority from Cases where Status='Escalated')
               from account where Name='CCXtest']; 
    
    public void display()
    {
        
        System.debug(a);
         System.debug(a.Name);
         System.debug(a.Type);
         System.debug('Escalted cases');
        list<Case> c=a.cases;
        for(case c1:c)
        {
            System.debug(c1);
        }
    }
}