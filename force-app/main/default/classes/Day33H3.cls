public class Day33H3 {
 list<contact> cons=new list<contact>();
    public void displaycontactrecords()
    {
      cons=[select name, email, phone from contact where phone != NULL AND Email !=NULL];
        
        for(contact c1:cons)
        {
            system.debug(c1);
        }
    }

}