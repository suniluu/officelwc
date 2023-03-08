public class Day33H4 {
 list<position__c> pos=new list<position__c>();
    public void displaypositionrecords()
    {
      pos=[select Name,Functional_Area__c,Location__c,Min_Pay__c from position__C where RecordType.name='IT_Record_Type'];
      for(position__c p:pos)
      {
        system.debug(p);
      }
    }
}