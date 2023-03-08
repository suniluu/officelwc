public class Day28C3 {
    public integer x=100;
    public final integer y=200;
    public static integer z=300;
    public final static integer f=400;
    public void m1()
    {
        System.debug('x from m1='+x);
        System.debug('y from m1='+y);
        System.debug('z from m1='+z);
        System.debug('final static variable from m1  f='+f);
        x=x+10;
        //y=y+20;
        z=z+30;
        System.debug('x from m1 after update='+x);
        System.debug('y from m1 after update='+y);
        System.debug('z from m1 after update='+z);
        System.debug('final static variable from m1 after update f='+f);
    }
     public void m2()
    {
        System.debug('x from m2='+x);
        System.debug('y from m2='+y);
        System.debug('z from m2='+z);
        System.debug('final static variable from m2  f='+f);
        x=x+11;
        //y=y+22;
        z=z+33;
        //f=f-20;
        System.debug('x from m2after update='+x);
        System.debug('y from m2after update='+y);
        System.debug('z from m2after update='+z);
        System.debug('final static variable from m2after update f='+f);
    }
}