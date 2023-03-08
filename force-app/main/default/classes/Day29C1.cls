public class Day29C1 {
Public Integer x;
    public void m1(integer y)
    {
        System.debug('y from m1 before update='+y);
        y=y-10;
        System.debug('y from m1 after update='+y);
    }
    public void display(integer x)
    {
        this.x=x;
        System.debug('x from display before method call='+x);
        m1(x);
        System.debug('x from display after method call='+x);
    }
}