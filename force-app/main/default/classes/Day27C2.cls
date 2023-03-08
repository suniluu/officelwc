public class Day27C2 {

//1.Integer Lists
    Public set<Integer>l11=new set<Integer>{43,45,32,56,445,76,76};
//2.Decimal Lists
    Public set<Decimal>dl11=new set<Decimal>{90.66,89.99,89.86}; 
//3.String Lists
    Public set<String>sl11=new set<String>{'Rama','Ram','Hari'};
//4.Standard Object List
    Public set<Account>accounts=new set<Account>();
    Public Account a11=new Account(Name='set Account1',Industry='Education',Phone='47947848');
    Public Account a21=new Account(Name='set Account2',Industry='Electronics',Phone='4544541');
    Public Account a31=new Account(Name='set Account3',Industry='Banking',Phone='7855454');
//5.Custom Object List
    public set<Position__c>positions=new set<Position__c>();
    Public Position__c p11=new Position__c(Name='set It',Min_Pay__c=45000,Functional_Area__c='Information Technology'); 
    Public Position__c p21=new Position__c(Name='set It2',Min_Pay__c=65000,Functional_Area__c='Information Technology'); 
    Iterator<Integer>iit=l11.iterator();
    Iterator<Decimal>dlit=dl11.iterator();
    Iterator<String>sit=sl11.iterator();
    Iterator<Account>accsit=accounts.iterator();
    Iterator<Position__c>posit=positions.iterator();
    Public void set()
    {
        accounts.add(a11);
        accounts.add(a21);
        accounts.add(a31);
        positions.add(p11);
        positions.add(p21);
        System.debug('Integer list l1='+l11);
        System.debug('Decimal list dl1='+dl11);
        System.debug('String  list sl1='+sl11);
        System.debug('Standard Object list accounts='+accounts);
        System.debug('Custom Object list positions='+positions);
  
 //2.Iterating set Using For Each Loop   
     System.debug('Iterating set Using For Each Loop '); 
 //2.1 Iterating set Using For Each Loop 
     System.debug('Iterating Integerset Using For Each Loop');
        for(integer x:l11)
        {
            System.debug(x);
        }
 //2.2 Iterating  Decimal set Using For Each Loop 
     System.debug('Iterating  Decimal set Using For Each Loop');
        for(decimal d:dl11)
        {
            System.debug(d);
        }  
//2.3 Iterating  String set Using For Each Loop 
     System.debug('Iterating  String set Using For Each Loop');
        for(String s:sl11)
        {
            System.debug(s);
        } 
 //2.4 Iterating  Standard object set Using For Each Loop 
     System.debug('Iterating  Standard object set Using For Each Loop');
        for(Account a:accounts)
        {
            System.debug(a);
            System.debug(a.Name);
            System.debug(a.Industry);
            System.debug(a.AnnualRevenue);
      } 
//2.5 Iterating  Custom object set Using For Each Loop 
     System.debug('Iterating  Custom object set Using For Each Loop');
        for(Position__c p:positions)
        {
            System.debug(p);
            System.debug(p.Name);
            System.debug(p.Min_Pay__c);
            System.debug(p.Functional_Area__c);
      }  
  //3.Iterating set Using Iterators
     System.debug('Iterating set Using Iterators');
  //3.1 Iterating Integer set Using Iterators  
      System.debug('Iterating Integer set Using Iterators');   
      While(iit.hasNext())
      {
          System.debug(iit.next());
      }
 //3.2 Iterating Decimal set Using Iterators  
      System.debug('Iterating Decimal set Using Iterators');   
      While(dlit.hasNext())
      {
          System.debug(dlit.next());
      }
//3.3 Iterating String set Using Iterators  
      System.debug('Iterating Decimal set Using Iterators');   
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