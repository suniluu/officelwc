public class Day30C6 {
    Public Integer qty;
    Public Integer Price;
    public String Ctype;
    Public void callDiscount(Integer q,integer p,String t)
    {
        this.qty=q;
        this.price=p;
        this.Ctype=t;
        if(Ctype=='Empolyee')
        {
            Day30C5.calculateDiscount(qty,Price,Ctype);
        }
          else if(Ctype=='Wholesaler')
        {
            Day30C52.calculateDiscount(qty,Price,Ctype);
        }
          else
        {
            Day30C53.calculateDiscount(qty,Price,Ctype);
        }
    }
}