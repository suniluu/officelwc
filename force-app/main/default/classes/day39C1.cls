public class day39C1 implements Queueable {
     public void execute(QueueableContext qc)
     {
         list<Opportunity> Oppcreated=[select name,StageName
                                      from Opportunity where CreatedDate=LAST_N_DAYS:20];
          list<Opportunity> updated=new list<Opportunity>();
         for(Opportunity setstatus:Oppcreated)
         {
             setstatus.StageName='Closed Lost';
             updated.add(setstatus);
         }
         update updated;
         
     }

}