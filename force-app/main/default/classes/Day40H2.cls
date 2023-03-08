public class Day40H2 implements database.Batchable<sobject>,database.stateful {
public  decimal usemployees=0;
    public  decimal ukemployees=0;
    public Day40H2(decimal usemployees)
    {
        this.usemployees=usemployees;
    }
    public database.QueryLocator start(database.BatchableContext bc)
    {
        return database.getQueryLocator([Select name,NumberOfEmployees,Region__c from lead where Region__c='uk']);
    }
    public void execute(database.BatchableContext bc,list<lead> lds)
    {
        for(lead l:lds)
        {
         ukemployees=ukemployees+l.NumberOfEmployees;
        }
    }
    public void finish(database.BatchableContext bc)
    {
        Day40H3 asiaEmployees=new Day40H3(usemployees,ukemployees);
        id asiaid=database.executeBatch(asiaEmployees,200);
    }
  }