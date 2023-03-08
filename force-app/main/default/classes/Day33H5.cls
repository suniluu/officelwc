public class Day33H5 {
  public void displaypositionrecords()
     {
         list<Position__c> pos2 =[select CreatedBy.Name,Name
                                 from Position__c
                                 where CreatedBy.Name='Recuriter B3rec'];
         
         for(Position__c pos3:pos2)
         {
             system.debug('Records with recruiter as owner are:'+pos3);
             
         }
     }
}