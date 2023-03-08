public class C3controller
{
    List<opportunity>ops;
    
    Public list<opportunity> getops()
    {
        Return ops;
    }
    Public pageReference openops()
    {
        Ops=[select name,stagename,amount from opportunity where stagename in('prospecting','value proposition')];
        return null;
    }
    Public pageReference closedops()
    {
        Ops=[select name,stagename,amount from opportunity where stagename in('Closed Won','Closed  Lost')];
        return null;
    }
}