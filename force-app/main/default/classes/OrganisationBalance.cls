public class OrganisationBalance {

    public static decimal openingbalance=5000;
   
    
    public  void salesamount(decimal amount,string isreturn)
    {
        if(isreturn=='return')
        {
            system.debug('Sales return amount='+amount);
            openingbalance=openingbalance-amount;
        }
        else
        {
            system.debug('Sales  amount='+amount);
            openingbalance=openingbalance+amount;
        }
        //system.debug('from credit amount='+Accountbalance);
    }
    public  void purchaseamount(decimal amount,string isreturn)
    {
        if(isreturn=='return')
        {
            system.debug('purchase return amount='+amount);
            openingbalance=openingbalance+amount;
        }
        else
        {
           system.debug('purchase  amount='+amount);
           openingbalance=openingbalance-amount;
        }
        //system.debug('from credit amount='+Accountbalance);
    }

    public static void displayaccountbalance()
    {
        system.debug('displayaccountbalanceusingsatticmethod='+openingbalance);
        
    }
    static
    {
       system.debug('Opening Balance='+openingbalance); 
        
    
    
}
}