public class Day36H5 {
    public void mergeEmployment()
    {
        
    
contact emp=[select title,email,phone
                          from contact where name='abhi'];
contact emp1=[select title,email,phone
                          from contact where name='Pranay V'];
    merge emp emp1;
        contact emp2=[select title,email,phone
                          from contact where name='abhi'];
        System.debug('Contact='+emp2);
}
}