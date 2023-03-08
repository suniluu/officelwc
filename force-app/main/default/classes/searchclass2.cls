public class searchclass2 {
    public String SearchString;
    List<Lead> lds;
    
    public String getSearchString ()
    {
        return SearchString;
    }
    public void setSearchString(String s)
    {
        SearchString = s;
    }
    public List<Lead> getlds()
    {
        return lds;
    }
    public pageReference doSearch()
    {
        lds = [Select firstname,email,phone from lead where firstname=:SearchString];
       return null;
    }
}