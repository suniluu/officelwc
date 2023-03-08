public class Day38H3 implements Queueable {
    public void execute(QueueableContext qc)
    {
        list<Position__c> positions=[select name,Functional_Area__c,Status__c
                                    from Position__c where Functional_Area__c IN('Information Technology','Finance') ];
        list<Position__c> positions1=new list<Position__c>();
        for(Position__c updatepos:positions)
        {
            updatepos.Status__c='Closed-Filled';
            positions1.add(updatepos);
        }
        update positions1;
    }

}