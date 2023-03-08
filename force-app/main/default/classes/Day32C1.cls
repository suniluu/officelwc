public class Day32C1 {
       public integer x;
       public integer y;
       public integer z;
    public void exceptionExample()
    {
        try{
            m1();
            z=x+y;
            System.debug('X='+x);
            System.debug('y='+y);
            System.debug('z='+z);
        }
        catch(MathException me)
        {
            System.debug('math Exception occurred'+me);
        }
        Catch(NullPointerException ne)
        {
            System.debug('Null Pinter Exceptionoccured'+ne);
            System.debug('Cause of exception='+ne.getCause());
            System.debug('Exception at line='+ne.getLineNumber());
            System.debug(ne.getStackTraceString());
        }
        catch(exception e)
        {
            System.debug('exception occured='+e);
        }
        finally{
            System.debug('this block is always excuted  with or without exception');
        }
        
    }
    public void m1(){
        System.debug('Hello');
    }
}