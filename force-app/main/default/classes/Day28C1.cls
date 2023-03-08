public class Day28C1 {
    Public integer x=100;
    Public integer y=200;
    Public integer z=300;
 Public void scopeofVariable()
 {
     System.debug('Class Variable x='+x);
     System.debug('Class Variable y='+y);
     System.debug('Class Variable z='+z);
     integer x=33;
     integer y=53;
     System.debug('Local Variable x='+x);
     System.debug('Local Variable y='+y);
     System.debug('Class Variable z='+z);
      if( x>30)
      {
          //integer y=530;
          Integer a=1000;
      System.debug('Variable A from if block='+a);    
     }
     //System.debug('Variable A from method block'+a);
 }
    Public void displayclassVariables()
    {
        System.debug('Class Variables x='+x);
        System.debug('Class Variables y='+y);
        integer y=539;
        
        
    }
}