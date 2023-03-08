public class Day35C2 {
    list<Case> c1=[select CaseNumber,status
                   from case
                   where status='new'];
    public void displayCaserecords()
    {
     for(case c2:c1)
     {
         System.debug('case name='+c2.CaseNumber);
         System.debug('case status='+c2.status);
     }
    }
}