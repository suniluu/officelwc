public class Day28C2 {
    Public integer x=30;
    public integer y=50;
    public integer z=70;
Public void m1()
{
        System.debug('x from m1='+x);
        System.debug('x from m1='+y);
        System.debug('x from m1='+z);
        x=x+10;
        y=y+20;
        z=z+100;
        System.debug('x from m1 after update='+x);
        System.debug('y from m1 after update='+y);
        System.debug('z from m1 after update='+z);
}    
    public void m2()
    {
        System.debug('x from m2='+x);
        System.debug('y from m2='+y);
        System.debug('z from m2='+z);
        x=x+22;
        y=y+44;
        z=z+66;
        System.debug('x from m2 after update='+x);
        System.debug('y from m2 after update='+y);
        System.debug('z from m2 after update='+z);
    }
    

}