public class Day27H2 {
public map<String,list<Position__c>> mappos=new map<String,list<Position__c>>();
public map<String,list<Position__c>> mappos1=new map<String,list<Position__c>>();    
    public void Position()
    {
        Position__c p1=new Position__c(Name='It map',Min_Pay__c=90000,Max_Pay__c=91000,Functional_Area__c='Information Technology');
        Position__c p2=new Position__c(Name='It map1',Min_Pay__c=30000,Max_Pay__c=35000,Functional_Area__c='Information Technology');
        Position__c p3=new Position__c(Name='It map2',Min_Pay__c=40000,Max_Pay__c=42000,Functional_Area__c='Information Technology');
        Position__c p4=new Position__c(Name='It map3',Min_Pay__c=50000,Max_Pay__c=52000,Functional_Area__c='Information Technology');
        Position__c p11=new Position__c(Name='NON It map',Min_Pay__c=60000,Max_Pay__c=62000,Functional_Area__c='Human Resources');
        Position__c p12=new Position__c(Name='NON It map1',Min_Pay__c=20000,Max_Pay__c=23000,Functional_Area__c='Human Resources');
        Position__c p13=new Position__c(Name='NON It map2',Min_Pay__c=35000,Max_Pay__c=40000,Functional_Area__c='Human Resources');
        
      list<Position__c> position=new list<Position__c>();
      list<Position__c> position1=new list<Position__c>();  
        position.add(p1);
        position.add(p2);
        position.add(p3);
        position.add(p4);
        position1.add(p11);
        position1.add(p12);
        position1.add(p13);
        mappos.put('Information Technology',position);
                for(integer i=0;i<mappos.size();i++)
        {
            System.debug('mappos='+mappos);
        }
        mappos1.put('Human Resources',position);
                for(integer i=0;i<mappos1.size();i++)
        {
            System.debug('mappos1='+mappos1);
        }
       
    }
}