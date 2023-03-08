public class StaticExample2 {
public static void m3()
{
    StaticExample1 obj=new StaticExample1();
    obj.m1();
    obj.m2();
    System.debug('x from m3='+StaticExample1.x);
    StaticExample1.x=StaticExample1.x+200;
    System.debug('x from m3 after update='+StaticExample1.x);
}
    
}