public class Day30C52 {
    public static void calculateDiscount(Integer q,integer p,string t)
    {
        Integer amount;
        Decimal discount;
        amount=q*p;
        discount=amount*0.20;
        Decimal  AmountAfterdiscount=Amount-discount;
        System.debug('Quantity='+q);
        System.debug('Price='+p);
        System.debug('Ctype='+t);
        System.debug('Amount='+amount);
        System.debug('discount='+discount);
        System.debug('Amount After discount='+AmountAfterdiscount );
    }

}