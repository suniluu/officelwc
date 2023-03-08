public class Day31C2 {
   public integer x=200;
    public integer y;
    public integer z;
    //constructor
    public Day31C2()
    {
        this.y=200;
    }
    public void addNum()
    {
       
        System.debug('X='+x);
        System.debug('y='+y);
        System.debug('z='+z);
        z=x+y;
        System.debug('X='+x);
        System.debug('y='+y);
        System.debug('z='+z);
    }
}