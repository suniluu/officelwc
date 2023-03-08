public class C5controller 
{
    list<account> acs=new list<account>();
    public list<account> getacs()
    {
        return acs;
    }
    public pageReference directacts()
    {
        acs=[select name,type,industry from account where type='Customer - Direct'];
        return null;
    }
    public pageReference channelacts()
    {
        acs=[select name,type,industry from account where type='Customer - Channel'];
        return null;
    }
}