public class Day33H6 {
 public void displaypositionrecords()
    {
        list<Position__c> pos4 =[select Name,Functional_Area__c
                                from Position__c
                                where CreatedDate = TODAY AND Functional_Area__c ='Ware Housing' ];
        
        for(Position__c pos:pos4)
        {
            system.debug('Ware Housing Records:'+pos);
        }
    }
}