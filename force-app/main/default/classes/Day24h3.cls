public class Day24h3 {
    Decimal Total;
    
    Public  void Discount(Integer Quantity,Decimal unitsSold, Decimal discount1)
    {
        System.debug('Quantity='+Quantity);
        System.debug('UnitsSold='+unitsSold);
        Decimal TotalAmount=Quantity*unitsSold;
        System.debug('Total amount is='+TotalAmount);
      Decimal   Discount=TotalAmount*Discount1;
        System.debug('Discount is='+Discount);
        Total=TotalAmount-Discount;
        System.debug('After Discount Total='+Total);
       
        
    }
   

}