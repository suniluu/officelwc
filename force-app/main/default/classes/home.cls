public class home 
 {
 public list<integer> a;
    public void passByreference(integer x,integer y){
       System.debug('x from passByreference before update='+x);
       
       System.debug('x from passByreference after update='+x); 
        x.format();
        System.debug('x from passByreference after deleting value at index 5='+x);
    }
    public void display(integer a,integer b){
   
         System.debug('a from passByreference before method call='+a);
        passByreference(a,b);
        System.debug('a from passByreference after method call='+a);
        
    }
}