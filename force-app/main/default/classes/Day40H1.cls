public class Day40H1 implements database.Batchable<sobject>,database.stateful{
   public  decimal usemployees=0;
    public database.QueryLocator start(database.BatchableContext bc)
    {
        return database.getQueryLocator([Select name,NumberOfEmployees,Region__c from lead where Region__c='usa']);
    }
    public void execute(database.BatchableContext bc,list<lead> lds)
    {
        for(lead l:lds)
        {
         usemployees=usemployees+l.NumberOfEmployees;
        }
    }
    public void finish(database.BatchableContext bc)
    {
        Day40H2 ukEmployees=new Day40H2(usemployees);
        id ukid=database.executeBatch(ukEmployees,200);
    }
    }