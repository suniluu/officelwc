public class Day28H3 {
      public Integer Quantity;
      public Integer Price;
      public Integer BillAmount;
      public Decimal TotalBillAmount;
      public decimal Discount;
      public Decimal GivenDiscount;
   
   Public void discount(Integer Quantity,Integer Price)
   {
       this.Quantity=Quantity;
       this.Price=Price;
       this.BillAmount=BillAmount;
       BillAmount=Price*Quantity;
          if(BillAmount>10000 && BillAmount<15000 )
       {
           Discount=0.10;
       }
        else if(BillAmount>15000 && BillAmount<20000 )
       {          
           Discount=0.15;       
       }
     else  if(BillAmount>20000)
       {          
           Discount=0.20;         
       }   
       else
       {
           discount=0;
           System.debug('No discount provided');
       }
           GivenDiscount=BillAmount*Discount;
           TotalBillAmount=BillAmount-GivenDiscount; 
           bill();
   }
    Public void bill()
    {
           System.debug('Quantity='+Quantity);
           System.debug('Price='+Price);
           System.debug('Bill Amount='+BillAmount);
           System.debug('Discount='+Discount);
           System.debug('GivenDiscount='+GivenDiscount);
           system.debug('TotalBillAmount='+TotalBillAmount);
    }
    
}