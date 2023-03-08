public class StaticExample1 {
public static integer x=100;
    public void m1()
    {
        System.debug('x from m1='+x);
        x=x+1000;
        System.debug('x from after update='+x);
    }
    public void m2()
    {
        System.debug('x from m2='+x);
        x=x+2000;
        System.debug('x from m2 after update='+x);
    
    }
}