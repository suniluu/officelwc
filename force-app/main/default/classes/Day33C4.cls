public class Day33C4 {
 List<Position__c> positions=new list<Position__c>();
 List<Position__c> positions2=new list<Position__c>(); 
    public void ReadPositions1()
    {
        Positions=[select Name,Min_Pay__c,Status__c,Location__c
                  From Position__c
                  where Open_Date__c<this_Month];
        System.debug('Position Records created before this Month');
        displaypositions();
        positions=[select Name,Min_Pay__c,Status__c,Location__c
                  from Position__c
                  Where Open_Date__c=this_week];
        System.debug('Positons records Created last week');
        displaypositions();
        Positions= [select Name,Min_Pay__c,Status__c,Location__c
                  from Position__c
                    where Open_Date__c<Last_N_YEARS:1];
        System.debug('Position Created Last Year');
        displaypositions();
        }
    Public Void ReadPositions2()
    {
        Positions2=[Select name from Position__c ];
        system.debug('All Positions');
        Positions2=[select Name from Position__c ALL Rows];
        System.debug('ALL ROWS='+Positions2.size());
        system.debug('All Positions');
        Displaypositions2();
        positions2=[select Name from Position__c where
                   isDeleted=true ALL ROWS];
        System.debug('All deleted Rows='+positions2.size());
        System.debug('deleted Records');
        Displaypositions2();
    }
    public void displaypositions()
    {
        for(Position__c p:positions)
        {
            System.debug(p);
        }
    }
    public void displayPositions2()
    {
        for(Position__c p:positions2)
        {
            system.debug(p);
        }
    }
}