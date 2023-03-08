public class Day40H3 implements database.Batchable<sobject>,database.stateful{
    public  decimal usemployees=0;
    public  decimal ukemployees=0;
    public  decimal asiaemployees=0;
    public Day40H3(decimal usemployees,decimal ukemployees)
    {
        this.usemployees=usemployees;
        this.ukemployees=ukemployees;
    }
    public database.QueryLocator start(database.BatchableContext bc)
    {
        return database.getQueryLocator([Select name,NumberOfEmployees,Region__c from lead where Region__c='asia']);
    }
    public void execute(database.BatchableContext bc,list<lead> lds)
    {
        for(lead l:lds)
        {
         asiaemployees=asiaemployees+l.NumberOfEmployees;
        }
    }
    public void finish(database.BatchableContext bc)
    {
        Day40H4 otherEmployees=new Day40H4(usemployees,ukemployees,asiaemployees);
        id othersid=database.executeBatch(otherEmployees,200);
    }
}