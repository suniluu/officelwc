public class Day26H1 {
    public list<Lead>list1=new list<Lead>();
    Public Lead l1=new Lead(LastName='Sunil',Company='ccx',Phone='99988999',Directions__c='South');
    Public Lead l2=new Lead(LastName='Abhi',Company='ccx',Phone='9898988',Directions__c='North');
    Public Lead l3=new Lead(LastName='Sid',Company='ccx',Phone='9827678',Directions__c='East');
    Public Lead l4=new Lead(LastName='Jhon',Company='ccx',Phone='3637763763',Directions__c='South');
    Public Lead l5=new Lead(LastName='Miller',Company='ccx',Phone='7363767',Directions__c='West');
     public list<Lead>list2=new list<Lead>();
     Public Lead l11=new Lead(LastName='Shashi',Company='dxc',Phone='873987498',Directions__c='South');
    Public Lead l12=new Lead(LastName='Chandra',Company='dxc',Phone='4784687',Directions__c='North');
    Public Lead l13=new Lead(LastName='Sai',Company='dxc',Phone='478974894',Directions__c='East');
    Public Lead l14=new Lead(LastName='Karthik',Company='dxc',Phone='4749764',Directions__c='South');
    Public Lead l15=new Lead(LastName='Chintu',Company='dxc',Phone='4764976',Directions__c='West');
    Public Lead l16=new Lead(LastName='Manish',Company='dxc',Phone='4768746',Directions__c='West');
    public list<Lead>list3=new list<Lead>();
Public Void Day26H1()
{
    //adding list1 records
    list1.add(l1);
    list1.add(l2);
    list1.add(l3);
    list1.add(l4);
    list1.add(l5);
   //adding List2 Records
   list2.add(l11);
    list2.add(l12);
    list2.add(l13);
    list2.add(l14);
    list2.add(l15);
    list2.add(l16);
           System.debug('Standard Object list list1='+list1);
           System.debug('Standard Object list list2='+list2);
   
 
 //add all list2 to list3
   list3.addAll(list1);   
    System.debug('List3 after add all elements of List1='+list3);
    
   list3.addAll(list2);
    System.debug('List3 after add all elements of List2='+list3);
    System.debug('list3 after adding all list1&2='+list3);
   System.debug('Iterating String Lists  Using Traditional For loop ');
        for(integer i=0;i<list3.size();i++)
        {
            System.debug(list3[i]);
            System.debug(list3[i].LastName);
           System.debug(list3[i].Company);
           System.debug(list3[i].Phone);
           System.debug(list3[i].Directions__c);
            
        }
    
    
       
}
}