public class Day29H1  {
Public Decimal a;
    public void passbyvalue(Decimal i)
    {
        System.debug('i from passbyvalue before update='+i);
        i=i*10;
        System.debug('i from passbyvalue after update='+i);
    }
    public void display(Decimal a)
    {
        this.a=a;
        System.debug('a from display before method call='+a);
        passbyvalue(a);
        System.debug('a from display after method call='+a);
    }
}