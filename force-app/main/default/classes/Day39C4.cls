public class Day39C4 {
list<lead> lds=[select name,city,country,AnnualRevenue,Region__c
                from lead];
    list<lead> updatelds=new list<lead>();
    public void updatelead()
    {
        for(lead l:lds)
        {
            if(l.country=='Suffolk')
            {
                l.Industry='Education';
                l.annualrevenue=1000000;
                l.Region__c='USA';
                updatelds.add(l);
                
            }
            else if(l.country=='')
            {
              l.annualrevenue=600000;
                l.Industry='Electronics';
                l.Region__c='Asia';
                updatelds.add(l); 
            }
            else
            {
                l.annualrevenue=500000;
                 l.Region__c='others';
                l.Industry='Entertainment';
                updatelds.add(l);
                
            }
            
        }
        update updatelds;
    }
}