public class Day39C5 implements Database.Batchable<Sobject>{
public final string Query='select name,city,country,AnnualRevenue from lead';
          public Database.QueryLocator start(Database.BatchableContext bc)
          {
              return database.getQueryLocator(Query);
          }
    public void execute (Database.BatchableContext bc,list<lead> lds)
    {
        List<lead> updatelead=new list<lead>();
        for(lead l:lds)
        {
            l.AnnualRevenue=l.AnnualRevenue+10000;
            updatelead.add(l);
        }
        update updatelead;
    }
        public void finish(Database.BatchableContext bc)
        {
            System.debug('Batches Inserted Successfully');
        }
    
}