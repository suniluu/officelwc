public class Day31C3 {
    public integer x=200;
    public integer y;
    public integer z;
    public string s;
    public decimal d;
    //empty constructor
    /*Public Day31C3()
/* {
this.s='Commercecx';
this.d=354689.32;
}
*/
//Parameterized constructor
Public  Day31C3(Integer y)
{
 this.y=y;
    this.s='CommerceCX';
    this.d=2254532.23;
}
Public  Day31C3(Integer y,String s,Decimal d)
{
    this.y=y;
    this.s=s;
    this.d=d;
}
     public void addNum()
    {
       
        System.debug('X='+x);
        System.debug('y='+y);
        System.debug('z='+z);
        System.debug('s='+s);
        System.debug('d='+d);
        z=x+y;
        System.debug('X='+x);
        System.debug('y='+y);
        System.debug('z='+z);
    }
}