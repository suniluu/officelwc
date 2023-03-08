public class OrganisationSales {
  
    public map<String,list<integer>> a=new map<String,list<integer>>();
    public list<integer> north=new list<integer>{10000,2000,20000,40000,11000,100000};
    public list<integer> south=new list<integer>{20000,30000,40000};
    public list<integer> west=new list<integer>{50000,60000,70000};
    public list<integer> east=new list<integer>{80000,78000,89000};
    public list<integer> quaterly=new list<integer>();
   
    public void monthlysales()
    {
        integer sumallzones=0;
        a.put('northquaterlysales',north);
        System.debug('monthly sales of north zone='+north);
        a.put('southquaterlysales',south);
        System.debug('monthly sales of south zone='+south);
        a.put('westquaterlysales',west);
        System.debug('monthly sales of west zone='+west);
        a.put('eastquaterlysales',east);
        System.debug('monthly sales of east zone='+east);
   
        for(integer i=0;i<a.size();i++)
        {
           quaterly.addAll(a.values()[i]);
           
        }
     
       System.debug('quaterly of all zones='+a);
        
       for(integer all:quaterly)
       {
            sumallzones+=all;
           System.debug('list of quaterly of all zones='+all);          
       }
        System.debug('Total of quaterly sales all zones ='+sumallzones);  
    }
}