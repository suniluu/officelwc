public class Day27H1 {
    
public map<String,list<Lead>> map1=new map<String,list<Lead>>();
public map<String,list<Lead>> map2=new map<String,list<Lead>>();    
    
    public void Lead()
    {
        Lead l1=new Lead(LastName='Sunil',Phone='997000',Directions__c='South',Industry='Bio-Techonolgy');
        Lead l2=new Lead(LastName='Sunil',Phone='997000',Directions__c='South',Industry='Bio-Techonolgy');
        Lead l3=new Lead(LastName='Sunil',Phone='997000',Directions__c='South',Industry='Bio-Techonolgy');
        Lead l4=new Lead(LastName='Sunil',Phone='997000',Directions__c='South',Industry='Bio-Techonolgy');
        list<Lead> leads=new list<lead>();
        leads.add(l1);
        leads.add(l2);
        leads.add(l3);
        leads.add(l4);
       
        
        Lead l11=new Lead(LastName='Sunil',Phone='997000',Directions__c='South',Industry='Banking');
        Lead l22=new Lead(LastName='Sunil',Phone='997000',Directions__c='South',Industry='Banking');
        Lead l33=new Lead(LastName='Sunil',Phone='997000',Directions__c='South',Industry='Banking');
        list<Lead> Leads1=new List<Lead>();
        Leads1.add(l11);
        Leads1.add(l22);
        Leads1.add(l33);
         map1.put('Bio-Techonolgy',leads);
        for(integer i=0;i<map1.size();i++)
        {
            System.debug('map1='+map1);
        }
        System.debug(map1);
        map2.put('Banking',Leads1);
       for(integer i=0;i<map2.size();i++)
        {
            System.debug('map2='+map2);
        }
        System.debug(map2);
        
    }
    
    
}