Global virtual class Day30H1 {
    decimal len;
    decimal bre;
    decimal a1;
    decimal r2;
    
    
    public void rectangle(integer l,integer b)
    {
        this.len=l;
        this.bre=b;
        System.debug('l='+l);
        System.debug('b='+b);
        Decimal area=l*b;
    System.debug('area of rectangle is='+area);
    }
    public  void square(integer a)
    {
        this.a1=a;
        system.debug('a='+a1);
        decimal area=a1*a1;
        System.debug('area of square='+area);   
    }
    public  void circle(decimal pi,decimal r)
    {
        this.r2=r;
        System.debug('r='+r2);
        Decimal circle=pi*r2*r2;
        System.debug('area of circle='+circle);
    }
   
}