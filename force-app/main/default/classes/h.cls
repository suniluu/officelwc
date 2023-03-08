public class h implements database.Batchable<sobject>,database.stateful{
    public  set<id> allleadid=new set<id>();
     public  set<id> successid=new set<id>();
     public  set<id> failleadid=new set<id>();
    public database.QueryLocator start(database.BatchableContext bc)
    {
        return database.getQueryLocator('select name,annualrevenue,NumberOfEmployees from lead');
    }
    public void execute(database.BatchableContext bc,list<lead> lds)
    {
       
            list<lead>updlds=new list<lead>();
            for(lead l:lds)
            {
                if(l.AnnualRevenue==1010000)
                {
                    l.NumberOfEmployees=30;
               allleadid.add(l.id);
                updlds.add(l);
                }
                else
                {
                   l.NumberOfEmployees=40;
               allleadid.add(l.id);
                updlds.add(l); 
                }

            database.SaveResult[] results=database.update(updlds,false);
            for(integer i=0;i<results.size();i++)
            {
                if(results.get(i).isSuccess())
                {
                    successid.add(results.get(i).id);
                }
                else
                {
                 failleadid.add(results.get(i).Id);
                }
                }
    }
    }

    public void finish(database.BatchableContext bc)
{
    System.debug('All lead id='+allleadid);
    System.debug('all success id='+successid);
    System.debug('all faillead id='+failleadid);
}
}