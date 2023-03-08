@istest
public class Day32H1Test {
@istest
    private static void method()
    {
        list<Position__c> p11=new list<Position__c>();
        Position__c p111= new Position__c(Name='Test',Functional_Area__c='Information Technology',
                                           Min_Pay__c=22500,Location__c='Hyderabad,Telangana',Hiring_Manager__c='0055g00000FJLN5AAP');
        Position__c p112= new Position__c(Name='Test1',Functional_Area__c='Information Technology',
                                           Min_Pay__c=22500,Location__c='Hyderabad,Telangana',Hiring_Manager__c='0055g00000FJLN5AAP');
        p11.add(p111);
        p11.add(p112);
        insert p11;
        Day32H1.displaypositionsrecords();
     list<Position__c> p=[Select name,Status__c,Functional_Area__c
                             from Position__c
                             where 	Min_Pay__c<=25000 And 	Location__c IN ('Hyderabad,Telangana','Vizag,AndhraPradesh') and Hiring_Manager__c ='0055g00000FJLN5AAP']; 
   
       /* for(Position__c p1:p)
    {
       
        System.assertEquals(25000, p1.Min_Pay__c);
        System.assertEquals('Hyderabad,Telangana,Vizag,AndhraPradesh', p1.Location__c);
        System.assertEquals('0055g00000FJLN5AAP', p1.Hiring_Manager__c);
        
     
    }*/
        integer x=p.size();
        System.assertEquals(2,x);
    
    }
}