public class Day39H4 implements database.Batchable<sobject>,database.stateful {
    public decimal totalofminpay=0;
    public database.QueryLocator start(database.BatchableContext bc)
    {
        return database.getQueryLocator([select name,Functional_Area__c,Min_Pay__c
                                        from Position__c]);
    }
    public void execute(database.BatchableContext bc,list<Position__c>pos)
    {
        for(Position__c p:pos)
        {
            totalofminpay=totalofminpay+p.Min_Pay__c;
        }
    }
    public void finish(database.BatchableContext bc)
    {
        System.debug('Total of min pay='+totalofminpay);
    }

}