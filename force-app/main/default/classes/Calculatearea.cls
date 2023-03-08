public class Calculatearea {
    public Integer length;
    public integer breadth;
    public integer side;
    public decimal pi;  
    public decimal radius ;
    public decimal area;
    
    
    public   Calculatearea(integer l,integer b)
 {
     this.length=l;
     this.breadth=b;  
       area=length*breadth;
 }
    public  Calculatearea(integer s)
{
    this.side=s;
    
     area=side*side;
    
}
   public Calculatearea(decimal pi,decimal r)
   {
     
     this.pi=pi;
     this.radius=r;
     
      area=pi*radius*radius;
      
   }
public void calaculate()
{
    System.debug('area='+area);
}

}