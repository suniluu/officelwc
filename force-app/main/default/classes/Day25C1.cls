public class Day25C1 {
    
    public enum myColorset{red,blue,green}
    public myColorset myEnumvar1;
    public myColorset myEnumvar2;
    public myColorset myEnumvar3;
public void  displayEnum()
{
  System.debug('myEnumvar1='+myEnumvar1);
  System.debug('myEnumvar2='+myEnumvar2);
  System.debug('myEnumvar3='+myEnumvar3);  
    myEnumvar1=myColorset.blue;
  System.debug('MyEnumVar1 after assignment='+myEnumvar1);  
    }
Public void displayEnum2(myColorset e2)
{
    System.debug('myEnumvar2='+myEnumvar2);
    myEnumvar2 = e2;
    System.debug('myEnumvar2 after assignment from parameter ='+myEnumvar2);
    system.debug('myEnumvar3='+myEnumvar3);
    myEnumvar3=displaymyEnum3();
    System.debug('myEnumvar3 after return='+myEnumvar3);
}
    Public myColorset displaymyEnum3()
    {
        myEnumvar3=myColorset.green;
        return myEnumvar3;
    }
    

    
}