public class Day26C2 {
    //1.Integer Lists
    Public list<Integer>l1=new list<Integer>{33,22,21,3,55,77,47,8};
    Public list<Integer>l2=new list<Integer>{33,22,21,3,55,77,47,8};
    Public list<Integer>l3=new list<Integer>{333,242,201,3,553,717,47,8};
    Public list<Integer>l4=new list<Integer>();
    Public list<Integer>l5=new list<Integer>();
    Public list<Integer>l6=new list<Integer>();
//2.Decimal Lists
    Public list<Decimal>dl1=new list<Decimal>{66.66,76.9,99.6}; 
//3.String Lists
    Public list<String>sl1=new list<String>{'Sam','James','Lahari'};
//4.Standard Object List
    Public list<Account>accounts=new list<Account>();
    Public Account a1=new Account(Name='List Account11',Industry='Education',Phone='55452');
    Public Account a2=new Account(Name='List Account22',Industry='Electrical',Phone='446464');
    Public Account a3=new Account(Name='List Account33',Industry='Banking',Phone='2524632');
//5.Custom Object List
    public list<Position__c>positions=new list<Position__c>();
    Public Position__c p1=new Position__c(Name='List Position',Min_Pay__c=33000,Functional_Area__c='Information Technology'); 
    Public Position__c p2=new Position__c(Name='List Position',Min_Pay__c=65000,Functional_Area__c='Information Technology');
Public Void listMethods()
{
 System.debug('Integer list l1='+l1);
    System.debug('Integer list l2='+l2);
    System.debug('Integer list l3='+l3);
    System.debug('Integer list l4='+l4);
    System.debug('Integer list l5='+l5);
    System.debug('Integer list l6='+l6);
        System.debug('Decimal list dl1='+dl1);
        System.debug('String  list sl1='+sl1);
        System.debug('Standard Object list accounts='+accounts);
        System.debug('Custom Object list positions='+positions);   
  //1.Add
    l1.add(999);
    System.debug('Integer List l1 after add 999='+l1);
    accounts.add(a1);
    accounts.add(a2);
    accounts.add(a3);
    positions.add(p1);
    positions.add(p2);
  //2.addall
    l3.addAll(l1);
    
    System.debug('L3 after add all elements of l1='+l3);
//3.Size
    System.debug('Size of L1='+l1.size()); 
//4.equals
    Boolean b=l1.equals(l2);
    System.debug('Is l1 equals l2='+b);
    b=l1.equals(l3);
    System.debug('Is equals L3='+b);
//5.Sort
    l1.sort();
System.debug('l1 after sort='+l1);
//6.is empty
    System.debug('is l4 empty='+l4.isEmpty());
//7.clone
    l5=l3.clone();
    System.debug('l5 after cloning from l3='+l5);
//8.contains
    b=l2.contains(77);
    System.debug('L2 conatins 77='+b);
//9.get
    System.debug('Element at index 2 in l5='+l5.get(2));
//10.set
     l5.set(4,555);
    System.debug('l5 after set  555 at index 4='+l5);
//11.remove
     System.debug('l5 after removing 5='+l5.remove(5));
//12.index of
     System.debug('Index of 33 in l5='+l5.indexOf(33));
//13.To string
     String s2=l2.toString();
     System.debug('Convert l2 to string s2'+s2);
//14.Clear
     System.debug('l2 before clear='+l2);
    l2.clear();
    System.debug('l2 after clear='+l2);
         } 
}