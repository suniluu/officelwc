public class Day27C3 {
    Public set <Integer> s21=new set<Integer>{10,22,65,87,90,78,87};
    Public set <Integer> s22=new set<Integer>{21,2,3,4,5,6,76,5};
    Public set <Integer> s23=new set<Integer>();
    Public set <Integer> s24=new set<Integer>{20,30,40,50,50,60,401};
    Public set<Integer> s25=new set<Integer>();
    public list<Integer> L11=new list<Integer>{10,100,200,300,4000};
    //Standard Object
    Public set<Account> acc=new set<Account>();
    Public Account a1=new Account(Name='Set method',Industry='Electronics',Phone='3983983');
    Public Account a2=new Account(Name='Set method2',Industry='Industry',Phone='9898989');
    //Custom object
    Public set<Position__c> pos=new set<Position__c>();
    Public Position__c p1=new Position__c(Name='It set',Min_Pay__c=90000);
    Public Position__c p2=new Position__c(Name='It set2',Min_Pay__c=60000);
    Public Void setmethods()
    {
        System.debug('S21='+s21);
          System.debug('s22='+s22);
          System.debug('s23='+s23);
          System.debug('s24='+s24);
          System.debug('s25='+s25);
          
        //add
        S21.add(35);
          System.debug('S21 after add 35='+s21);
        //add all
        s21.addAll(s22);
          System.debug('s21 after adding elements s22='+s22);
        //addall(list)
        s21.addAll(L11);
          System.debug('S21 after adding list element='+s21);
        //clone
        s23=s21.clone();
          System.debug('S23 after cloning='+s23);
        //size
          System.debug('s22 size='+s22.size());
        //is empty
          System.debug('is s25 empty='+s25.isEmpty());
        //contains
        System.debug('is s22 contains 6='+s22.contains(6));
        //contains all
        system.debug('Is s23 conatins all element of s22='+s23.containsAll(s22));
        //equals
          System.debug('s21 is equals 23'+s21.equals(s23));
        //remove
          System.debug('s22 after remove ='+s22.remove(5));
       //clear
     s22.clear();
        System.debug('s22 after clear='+s22);
        
        
    }
    
    
}