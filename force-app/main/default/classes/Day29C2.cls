public class Day29C2 {
      public list<integer> l1;
    public void m1(list<integer> y){
       System.debug('y from m1 before update='+y);
        y.add(100);
       System.debug('y from m1 after update='+y); 
    }
    public void display(list<integer> l1){
        this.l1=l1;
         System.debug('l1 from m1 before method call='+l1);
        m1(l1);
        System.debug('l1 from m1 after method call='+l1);
        
    }
}