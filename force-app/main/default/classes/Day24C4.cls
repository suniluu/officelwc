public class Day24C4 {
    Public map<Integer,Integer>mp11=new map<Integer,Integer>{10=>20,30=>40,44=>55};
    Public map<Integer,Integer>mp11clone=new map<Integer,integer>();
    Public map<Integer,String>mp12=new map<Integer,String>();
    public map<integer,decimal>mp13=new map<integer,decimal>{1=>100.98,2=>33.96,3=>76.98};
    public map<String,string>mp14=new map<string,String>{'a'=>'anurag','r'=>'rahul','s'=>'sai'};
    public map<string,list<string>>mp15=new map<string,list<string>>();
    public map<Id,Account>mp16=new map<Id,Account>();
    Public map<id,Position__c>mp17=new map<id,Position__c>();
    public map<Integer,list<Account>> mp18=new map<Integer,list<Account>>();
    
    
    public void mapoperations()
    {
        mp12.put(1,'abhi');
        mp12.put(2,'adhi');
        mp12.put(3,'siddhi');
        mp12.put(4,'hari');
        System.debug('mp11='+mp11);
        system.debug('mp12='+mp12);
        list<string>l1=new list<string>{'bat','bowl','bag'};
        list<string>l2=new list<string>{'farhan','fawad','dhoni'};
        mp15.put('b-list',l1);
        mp15.put('f-list',l2);
        account a= new Account(name='map account',Industry='Education',Phone='739739');
        mp16.put('0015g00000r5ny2AAA',a);
        Account a1=new Account(Name='mapp account2',Industry='Electrical',Phone='938838');
        Account a2=new Account(Name='mapp account3',Industry='Education',Phone='98498');
        Account a3=new Account(Name='mapp account4',Industry='Electrical',Phone='3874087');
        Account a4=new Account(Name='mapp account5',Industry='Education',Phone='47047');
        Account a5=new Account(Name='mapp account6',Industry='Education',Phone='47407047');
        Account a6=new Account(Name='mapp account7',Industry='Electrical',Phone='36946984');
        Account a7=new Account(Name='mapp account8',Industry='Education',Phone='4879847984');
        list <Account> al=new list<Account>();
        list<Account> al2=new list<Account>();
        al.add(a1);
        al.add(a2);
        al.add(a3);
        al2.add(a4);
        al2.add(a5);
        al2.add(a6);
        al2.add(a7);
        mp18.put(100,al);
        mp18.put(200,al2);
        System.debug('Integer list of account map='+mp18);
        //map method
        //clone
        System.debug('mp11clone before clone='+mp11clone);
        mp11clone=mp11.clone();
        System.debug('Mp11 clone after clone='+mp11clone);
        //equals
        System.debug('is mp11 equals mp11clone='+mp11.equals(mp11clone));
        //keyset
        System.debug('mp11 key set='+mp11.keySet());
        set<String> strlist=new set<string>();
        strlist.addAll(mp14.keySet());
        System.debug('Key set of mp14='+strlist);
        //values
        System.debug('mp11 values='+mp11.values());
        list<Integer> l=new list<Integer>();
        l.addAll(mp11.values());
        System.debug('mp11 values collected in list='+mp11.values());
        //remove
        mp11.remove(10);
        System.debug('mp11 after remove='+mp11);
        //size
      System.debug('size of mp11='+mp11.size());
        System.debug('size of mp12='+mp12.size());
        //clear
       mp11.clear();
        System.debug('mp11 after clear='+mp11);
        
        
        
    }
    
}