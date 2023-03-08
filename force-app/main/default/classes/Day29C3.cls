public class Day29C3 {
        public integer z;
        public decimal d;
        public string s;
    public void addValues(Integer x,integer y)
    {
        System.debug('X='+x);
        System.debug('Y='+y);
        z=x+y;
        display();
    }
     public void addValues(Integer x,decimal d1)
    {
        System.debug('X='+x);
        System.debug('d='+d1);
       d=x-d1;
        display();
    }
    public void addValues(String s1,String S2)
    {
        System.debug('s1='+s1);
        System.debug('s2='+s2);
        s=s1+s2;
        display();
    }
    public void display()
    {
        System.debug('z='+z);
        System.debug('d='+d);
        System.debug('s='+s);
    }
}