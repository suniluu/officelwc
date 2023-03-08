public class StaticExample3 {
public static void m4()
{
    System.debug('x from m4='+StaticExample1.x);
    StaticExample1.x=StaticExample1.x+1000;
    System.debug('x from m4 after update='+StaticExample1.x);
}
}