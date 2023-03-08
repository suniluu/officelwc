public class Day29H2 {
 public list<integer> a;
    public void passByreference(list<integer> x){
       System.debug('x from passByreference before update='+x);
       x.add(100);
       x.add(200); 
       System.debug('x from passByreference after update='+x); 
        x.remove(5);
        System.debug('x from passByreference after deleting value at index='+x);
    }
    public void display(list<integer> a){
        this.a=a;
         System.debug('a from passByreference before method call='+a);
        passByreference(a);
        System.debug('a from passByreference after method call='+a);
        
    }
}