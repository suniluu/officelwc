Global virtual class Day29C4 {
    Private integer privatevariabble=10;
    Protected integer protectedvariabble=20;
    Public integer publicvariabble=30;
    Global integer globalvariabble=40;
    private void sayhello()
    {
        System.debug('Hello from parnet private method');
    }
    protected void sayhi()
    {
        System.debug('Hai from parnet protected method');
    }
    Public void parnetMethod()
    {
        System.debug('private variable'+privatevariabble);
        System.debug('protected variable'+protectedvariabble);
        System.debug('public variable'+publicvariabble);
        System.debug('global variable'+globalvariabble);
    }
    global void saybye()
    {
        System.debug('bye from parnet global method');
    }
    public virtual void display()
    {
        System.debug('from parnet display method');
    }
    
    

}