public class Day36H3 {
    list<Position__c>pos=new list<position__c>();
    public void addlistOfposition()
    {
        try{
        Position__c p1 = new Position__c(name='insert pos',Min_Pay__C =50000,Max_Pay__c=250000,Location__c='Hyderabad,Telangana',Functional_Area__c='Finance');
        Position__c p2 = new Position__c(name='insert i',Min_Pay__C =39000,Max_Pay__c=50000,Location__c='Hyderabad,Telangana',Functional_Area__c='Information Technology');
        Position__c p3 = new Position__c(name='insert s',Min_Pay__C =70000,Max_Pay__c=80000,Location__c='Hyderabad,Telangana',Functional_Area__c='Miscellaneous');
        p1.RecordType.id='0125g000000eSRqAAM';
        pos.add(p1);
        pos.add(p2);
        pos.add(p3);
        database.insert(pos); 
             list<database.SaveResult> dbsr = database.insert(pos,false);
         for(database.SaveResult dr:dbsr)
         {
             if(dr.issuccess())
             {
                 system.debug('record inserted successfully:'+dr.id);
             }
             else
             {
                 list<database.Error> errs =dr.getErrors();
                 for(database.Error err:errs)
                 {
                     system.debug('Error message:'+err.getMessage());
                     system.debug('Error code:'+err.getStatusCode());
                     system.debug('Error fields:'+err.getFields());
                 }
             }
         }
             
     }catch(DMLException de)
               {
                 
                }
        }
    
        }