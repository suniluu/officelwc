public class Day39H1 implements database.Batchable<Sobject>{
    String Query='select name,Functional_Area__c,Min_Pay__c from Position__c';
    public database.QueryLocator start(database.BatchableContext bc)
    {
        return database.getQueryLocator(Query);
    }
    public void execute(database.BatchableContext bc,list<Position__c>pos)
    {
        list<Position__c> updatepos=new list<Position__c>();
        for(Position__c p:pos)
        {
            if(p.Min_Pay__c<=50000)
            {
                p.Min_Pay__c=p.Min_Pay__c+p.Min_Pay__c*0.10;
            }
            updatepos.add(p);
            
        }
        update updatepos;
    }
    public void  finish(database.BatchableContext bc)
    {
        System.debug('Batches updated succesfully');
    }
    
}