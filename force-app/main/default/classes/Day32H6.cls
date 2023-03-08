public class Day32H6 {
 public static void displayLeadrecords(){
    list<Lead> l=[select name,	AnnualRevenue,	Status
                 from Lead
                 Where name Like '________' And name Like '%d%'];
    for(Lead l1:l)
    {
        System.debug(l1);
    }

}
}