public class Day32H5 {
    public static void displayLeadrecords(){
    list<Lead> l=[select name,	AnnualRevenue,	Status
                 from Lead
                 Where name Like '_____'];
    for(Lead l1:l)
    {
        System.debug(l1);
    }

}
}