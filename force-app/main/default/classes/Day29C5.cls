public class Day29C5 extends Day29C4 {
    Public Integer ChildVariable=222;
    public void childMethod()
    {
        //sayhello();
        sayhi();
        parnetmethod();
        saybye();
       // System.debug('private variable'+privatevariabble);
        System.debug('protected variable'+protectedvariabble);
        System.debug('public variable'+publicvariabble);
        System.debug('global variable'+globalvariabble);
        System.debug('child variable='+ChildVariable);
        display();
        super.display();
        }
    public override void display()
    {
        System.debug('this is from redfined child class');
        System.debug('this is from child class display');
    }

}