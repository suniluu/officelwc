Public class Class24c4{
Integer x=10;
 Integer y=20;
 Integer z;
    Public Integer addNum()
    {
        System.debug('Value of x received='+x);
        System.debug('Value of y received='+y);
        System.debug('Value of z received='+z);
       Integer z=x+y;
        System.debug('Value of z after add='+z);
    return z;
    }
Public Void  addnumResult(){
    Integer z2=addNum();
    System.debug('z2 After return ='+z2);
}
    Public Decimal addNum1(Integer x,Decimal y)
    {
        System.debug('Value of x received='+x);
        System.debug('Value of y received='+y);
        System.debug('Value of z received='+z);
       decimal z1=x+y;
        return z1;
      
    }
Public Void  addnumResult1(){
    Decimal z2=addNum1(22,24.5);
    System.debug('z2 After return ='+z2);
}
}