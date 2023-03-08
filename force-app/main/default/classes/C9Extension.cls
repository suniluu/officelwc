public class C9Extension 
{
	public C9Extension(ApexPages.StandardController con)
    {
        
    }
    string hello='Welcome';
    list<campaign> camps=[select name,startdate,enddate from campaign];
    public list<campaign> getcamps()
    {
        return camps;
    }
    public string gethello()
    {
        return hello;
    }
}