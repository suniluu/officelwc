@istest
public class Day32H3test {
@istest
private static void method()
{
list<Position__c> pp=new list<Position__c>();
        Position__c pp1= new Position__c(Name='Test',Functional_Area__c='Information Technology',
                                           Min_Pay__c=22500,Location__c='Vizag,AndhraPradesh');
        Position__c pp2= new Position__c(Name='Test1',Functional_Area__c='Information Technology',
                                           Min_Pay__c=22500,Location__c='Vizag,AndhraPradesh');
        pp.add(pp1);
        pp.add(pp2);
        insert pp;    
    Day32H3.displayPositionrecords();
    list<Position__c> p=[Select name,Status__c,Location__c
                             from Position__c
                             where 	Min_Pay__c<50000 And 	Location__c !='Hyderabad,Telangana'];
    integer x=p.size();
    System.assertEquals(2, x);
}    

}