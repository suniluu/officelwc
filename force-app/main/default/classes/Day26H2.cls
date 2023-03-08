public class Day26H2 
{
 Public list<String>sl1=new list<String>{'Ram','James','Bond'};
 Public list<String>sl2=new list<String>{'Sam','Sun','Karthik'};
 Public list<String>sl3=new list<String>{'Pooja','Arathi','Arjun'};
 Public list<String>sl4=new list<String>();
 Public list<String>sl5=new list<String>();
    Public list<String>sl6=new list<String>();
    Public list<String>sl7=new list<String>();
    Public void listMethod()
    {
        System.debug('sl1='+sl1);
        System.debug('sl2='+sl2);
        System.debug('sl3='+sl3);
        System.debug('sl4='+sl4);
        System.debug('sl5='+sl5);
 //1.Add
 System.debug('Before Adding Sunil in sl1='+sl1);
 sl1.add('Sunil');
 System.debug('After Adding Sunil in sl1='+sl1);
//2.Addall
System.debug('Before sl1 elements in sl5='+sl5); 
     sl5.addAll(sl1);
      System.debug('Adding sl1 elements in sl5='+sl5);   
//3.add at index
 System.debug('Before Adding Sunny at index 2 in Sl2='+sl2);
      sl2.add(2,'Sunny');
      System.debug('After Adding Sunny at index 2 in Sl2='+sl2);
//4.Add all list element
 System.debug('Before adding list elemnts of sl2 in sl4='+sl4);
      sl4.addAll(sl2);
        System.debug('After adding list elemnts of sl2 in sl4='+sl4);
 //5.clone
 System.debug('Before Cloning Sl3 to sl6='+sl6);
  sl6=sl3.clone();
        System.debug('Cloning Sl3 to sl6='+sl6);
//6.equals

Boolean b=sl1.equals(sl2);
        System.debug('sl1 equals sl2='+b);
//7.contains
b=sl2.contains('Sam');
 System.debug('sl2 contains Sam='+b);
//8.size
System.debug('Size of sL1='+sl1.size());
//9.sort
System.debug('Before sl2 sort'+sl2);
 sl2.sort();
System.debug('After sl2 sort'+sl2);  
//10.isempty
System.debug('is sl3 empty='+sl3.isEmpty());
//11.get
    System.debug('Element at index 2 in sl5='+sl5.get(2));
//12.set
System.debug('Before set Bheem at sl3='+sl3);
        sl3.set(0,'Bheem');
System.debug('After set Bheem at sl3='+sl3);
//13.remove
 System.debug('sl1 after removing 1='+sl1.remove(0));
        System.debug('sl1='+sl1);
//14.index of
     System.debug('Index of Arjun in sl3='+sl3.indexOf('Arjun'));
/*
        //15.String to
   String s2=sl2.toString();
     System.debug('Convert sl2 to string s2'+s2);*/

//16.Clear
     System.debug('sl2 before clear='+sl2);
    sl2.clear();
     System.debug('sl2 after clear='+sl2);
  
    }
}