public class Day30C8 {
    public integer x=100;
    protected integer y=1000;
    private integer z=10000;
    
    public void printOuterVariables()
    {
        System.debug('From Public Outer Class');
        system.debug('outer public x='+x);
        system.debug('outer Protected y='+y);
        system.debug('outer Private z='+z);
    }
    Private void printOuterVariables2()
    {
        System.debug('From private Outer Class');
         system.debug('outer public x='+x);
        system.debug('outer Protected y='+y);
        system.debug('outer Private z='+z);
    }
    public class innerClass
    {
        public integer icx=111;
        protected integer icy=111;
        private integer icz=111;
        
        public void printInnervariables()
        {
            System.debug('From public Inner class');
            System.debug('from inner public icx='+icx);
            System.debug('from inner protected icy='+icy);
            system.debug('from inner private icz='+icz);
            
            /* system.debug('outer public x='+x);
        system.debug('outer Protected y='+y);
        system.debug('outer Private z='+z);*/
            
        }
    }
}