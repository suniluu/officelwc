public class Day31H1 {
    public integer side=10;
    public integer numbers;
    public static integer len=10;
    public static integer breadth;
    public static integer height;
    public static decimal onebytwo;
    public static decimal pi;
    public static decimal radius;
    public static decimal areaofrectangle;
    public static decimal areaoftriangle;
    public static decimal areaofcircle;
    
    static{
        //number=4;instance variable can't be accessed
        onebytwo=0.5;
          }
    static
    {
        pi=3.14;
    }
    static{
        breadth=15;
    }
    static
        {
       // static decimal areaofrectangle; static is not allowed in local
        areaofrectangle=len*breadth;
        }
    static
    {
        radius=10;
        areaofcircle=pi*radius;//storing static variable value in instance variable
    }
    public void nonstaticmethod()
    {
        system.debug('NON Static Method');
        System.debug('square side='+side);
        Integer areaofsquare=side*side;
        System.debug('Area of square='+areaofsquare);
        System.debug('len='+len);
        System.debug('breadth='+breadth);
        System.debug('height='+height);
        System.debug('onebytwo='+onebytwo);
        System.debug('pi='+pi);
        System.debug('radius'+radius);
        System.debug('areaofcircle='+areaofcircle);
       System.debug('areaofrectangle='+areaofrectangle);
        System.debug('areaoftriangle='+areaoftriangle);
        
    }
  public static void staticmethod()
  {
      //System.debug('square side='+side);
     //System.debug('Area of square='+areaofsquare);
     system.debug('Static Methods');
        System.debug('len='+len);
        System.debug('breadth='+breadth);
        System.debug('height='+height);
         height=20;
      System.debug('height='+height);
       areaoftriangle=onebytwo*(len+height);
        System.debug('onebytwo='+onebytwo);
        System.debug('pi='+pi);
        System.debug('radius'+radius);
        System.debug('areaofcircle='+areaofcircle);
        System.debug('areaofrectangle='+areaofrectangle);
        System.debug('areaoftriangle='+areaoftriangle);
        
  }
    
    
    
}