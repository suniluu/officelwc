public class Day40H4 implements database.Batchable<sobject>,database.stateful{
    public  decimal usemployees=0;
    public  decimal ukemployees=0;
    public  decimal asiaemployees=0;
    public  decimal otheremployees=0;
    public decimal totalemployees=0;
    
    public Day40H4(decimal usemployees,decimal ukemployees,decimal asiaemployees)
    {
        this.usemployees=usemployees;
        this.ukemployees=ukemployees;
        this.asiaemployees=asiaemployees;
    }
    public database.QueryLocator start(database.BatchableContext bc)
    {
        return database.getQueryLocator([Select name,NumberOfEmployees,Region__c from lead where Region__c='others']);
    }
    public void execute(database.BatchableContext bc,list<lead> lds)
    {
        for(lead l:lds)
        {
         otheremployees=otheremployees+l.NumberOfEmployees;
        }
    }
    public void finish(database.BatchableContext bc)
    {
       System.debug('usemployees='+usemployees);
        System.debug('ukemployees='+ukemployees);
        System.debug('asiaemployees='+asiaemployees);
        System.debug('otheremployees='+otheremployees);
        totalemployees=usemployees+ukemployees+asiaemployees+otheremployees;
        System.debug('totalemployees='+totalemployees);
    }

}