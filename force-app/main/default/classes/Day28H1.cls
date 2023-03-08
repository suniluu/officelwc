public class Day28H1 {
    public integer n;
    public integer i=1;
    public void Table(integer n,integer a)
{
    this.n=n;  
    do
   {  System.debug(+n+ ' * ' +i+ ' = ' + n * i);
       i++;    
   }
    while(i<=a);
}
}