public class Day39H3 implements database.Batchable<sobject>{
    public database.QueryLocator start(database.BatchableContext bc)
    {
        return database.getQueryLocator([select name,Functional_Area__c,Min_Pay__c,Max_Pay__c
                                        from Position__c where Functional_Area__c IN('Information Technology','Finance')]);
    }
    public void execute(database.BatchableContext bc,list<Position__c>pos)
    {
        list<Position__c> updated=new list<Position__c>();
        for(Position__c p:pos)
        {
            p.Max_Pay__c=p.Max_Pay__c+p.Max_Pay__c*0.15;
            updated.add(p);
        }
        update updated;
    }
    public void finish(database.BatchableContext bc)
    {
        System.debug('Positions updated successfully');
    }

}