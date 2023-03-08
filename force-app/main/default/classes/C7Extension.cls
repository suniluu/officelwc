public  with sharing class C7Extension 
{
    public integer noOfRecords ;
    public static integer PageSize{get;set;}
    ApexPages.StandardSetController setCon ;
    
    public C7Extension(ApexPages.StandardSetController controller)
    {
        PageSize = 10;
        setCon =controller;
        setCon.setpagesize(PageSize);
    }
    //Changes the size of pagination
    public PageReference refreshPageSize()
    {
        setCon.setPageSize(PageSize);
        return null;
    }
    
}