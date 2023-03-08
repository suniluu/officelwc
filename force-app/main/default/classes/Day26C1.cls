public class Day26C1
{
//1.Integer Lists
    Public list<Integer>l1=new list<Integer>{33,22,21,3,55,77,47,8};
//2.Decimal Lists
    Public list<Decimal>dl1=new list<Decimal>{66.66,76.9,99.6}; 
//3.String Lists
    Public list<String>sl1=new list<String>{'Sam','James','Lahari'};
//4.Standard Object List
    Public list<Account>accounts=new list<Account>();
    Public Account a1=new Account(Name='List Account1',Industry='Education',Phone='124541');
    Public Account a2=new Account(Name='List Account2',Industry='Electrical',Phone='4544541');
    Public Account a3=new Account(Name='List Account3',Industry='Banking',Phone='7855454');
//5.Custom Object List
    public list<Position__c>positions=new list<Position__c>();
    Public Position__c p1=new Position__c(Name='It',Min_Pay__c=32000,Functional_Area__c='Information Technology'); 
    Public Position__c p2=new Position__c(Name='It2',Min_Pay__c=60000,Functional_Area__c='Information Technology'); 
    Iterator<Integer>iit=l1.iterator();
    Iterator<Decimal>dlit=dl1.iterator();
    Iterator<String>sit=sl1.iterator();
    Iterator<Account>accsit=accounts.iterator();
    Iterator<Position__c>posit=positions.iterator();
    Public void ListIterations()
    {
        accounts.add(a1);
        accounts.add(a2);
        accounts.add(a3);
        positions.add(p1);
        positions.add(p2);
        System.debug('Integer list l1='+l1);
        System.debug('Decimal list dl1='+dl1);
        System.debug('String  list sl1='+sl1);
        System.debug('Standard Object list accounts='+accounts);
        System.debug('Custom Object list positions='+positions);
  //1.Iterating Lists Using Traditional For loop  
        System.debug('Iterating Lists Using Traditional For loop  ');
  //1.1 Iterating Integer Lists  Using Traditional For loop 
        System.debug('Iterating Integer Lists  Using Traditional For loop ');
        for(integer i=0;i<l1.size();i++)
        {
            System.debug(l1[i]);
        }
  //1.2 Iterating Decimal List Using Traditional For loop
        System.debug('Iterating Decimal List Using Traditional For loop');
        for(integer i=0;i<dl1.size();i++)
        {
            System.debug(dl1[i]);
        }
//1.3 Iterating String List Using Traditional For loop
        System.debug('Iterating String List Using Traditional For loop');
        for(integer i=0;i<sl1.size();i++)
        {
            System.debug(sl1[i]);
        }
 //1.4 Iterating Standard object List Using Traditional For loop
        System.debug('Iterating Standard Object List Using Traditional For loop');
        for(integer i=0;i<accounts.size();i++)
        {
            System.debug(accounts[i]);
            System.debug(accounts[i].name);
            System.debug(accounts[i].Industry);
            System.debug(accounts[i].phone);
            System.debug(accounts[i].AnnualRevenue);
        }
 //1.5 Iterating Custom object List Using Traditional For loop
        System.debug('Iterating Custom Object List Using Traditional For loop');
        for(integer i=0;i<positions.size();i++)
        {
            System.debug(positions[i]);
            System.debug(positions[i].Name);
            System.debug(positions[i].Min_Pay__c);
            System.debug(positions[i].Functional_Area__c);
          }
 //2.Iterating Lists Using For Each Loop   
     System.debug('Iterating Lists Using For Each Loop '); 
 //2.1 Iterating IntegerLists Using For Each Loop 
     System.debug('Iterating IntegerLists Using For Each Loop');
        for(integer x:l1)
        {
            System.debug(x);
        }
 //2.2 Iterating  Decimal Lists Using For Each Loop 
     System.debug('Iterating  Decimal Lists Using For Each Loop');
        for(decimal d:dl1)
        {
            System.debug(d);
        }  
//2.3 Iterating  String Lists Using For Each Loop 
     System.debug('Iterating  String Lists Using For Each Loop');
        for(String s:sl1)
        {
            System.debug(s);
        } 
 //2.4 Iterating  Standard object Lists Using For Each Loop 
     System.debug('Iterating  Standard object Lists Using For Each Loop');
        for(Account a:accounts)
        {
            System.debug(a);
            System.debug(a.Name);
            System.debug(a.Industry);
            System.debug(a.AnnualRevenue);
      } 
//2.5 Iterating  Custom object Lists Using For Each Loop 
     System.debug('Iterating  Custom object Lists Using For Each Loop');
        for(Position__c p:positions)
        {
            System.debug(p);
            System.debug(p.Name);
            System.debug(p.Min_Pay__c);
            System.debug(p.Functional_Area__c);
      }  
  //3.Iterating Lists Using Iterators
     System.debug('Iterating Lists Using Iterators');
  //3.1 Iterating Integer Lists Using Iterators  
      System.debug('Iterating Integer Lists Using Iterators');   
      While(iit.hasNext())
      {
          System.debug(iit.next());
      }
 //3.2 Iterating Decimal Lists Using Iterators  
      System.debug('Iterating Decimal Lists Using Iterators');   
      While(dlit.hasNext())
      {
          System.debug(dlit.next());
      }
//3.3 Iterating String Lists Using Iterators  
      System.debug('Iterating Decimal Lists Using Iterators');   
      While(sit.hasNext())
      {
          System.debug(sit.next());
      }
               
 //3.4 Iterating Standard Object Lists Using Iterators  
 /*     System.debug('Iterating Standard Object Lists Using Iterators');   
      While(accsit.hasNext())
      {
          System.debug(accsit.next());
      }
  //3.5 Iterating Custom Object Lists Using Iterators  
      System.debug('Iterating Custom Object Lists Using Iterators');   
      While(posit.hasNext())
      {
          System.debug(posit.next());
      } */
             
}
}