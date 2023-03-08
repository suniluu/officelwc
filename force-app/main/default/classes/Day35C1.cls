public class Day35C1 {
list<Position__c> p1=[select name,Functional_Area__c
                     from Position__c
                     where Functional_Area__c='Information Technology'];
 public void displayItpositions()
 {
     for(Position__c p2:p1)
     {
         System.debug('Position name='+p2.name);
         System.debug('position functonal Area='+p2.Functional_Area__c);
        
     }
 }
}