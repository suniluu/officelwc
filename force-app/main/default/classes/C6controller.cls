public class C6controller 
{
    List<Account> DirectAccts=[select name,industry,phone from Account where Industry='Banking'];
    List<Account> ChannelAccts=[select name,industry,phone from Account where Industry='Prospecting'];
    Public list<Account> getdirectAccts()
    {
        return DirectAccts;
    }
    Public list<Account> getchannelAccts()
    {
        return ChannelAccts;
    }
}