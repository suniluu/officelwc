public class Day36C2 {

    //Insert single record
    public void saveResults(){
        try{
            Account a = new Account(name= 'ABC Res Acc1', industry='Education',Phone='141414');
            Database.SaveResult dsr = Database.insert(a,false);
            if(dsr.isSuccess()){
                System.debug('Record inserted successfully = '+ dsr.id);
                
            }else{
                list<Database.Error> derr= dsr.geterrors();
            }
        }
        catch(DMLException de){
            
        }
    }
     public void saveResults2(){
        try{
            Account a = new Account( industry='Education',Phone='141414');
            Database.SaveResult dsr = Database.insert(a,false);
            if(dsr.isSuccess()){
                System.debug('Record inserted successfully = '+ dsr.id);
                
            }else{
                list<Database.Error> derr= dsr.getErrors();
                for(database.error err : derr){
                    System.debug('Error code = '+ err.getStatusCode());
                    System.debug('Error Field = '+ err.getFields());
                    System.debug('Error Message = '+ err.getMessage());
                }
            }
        }
        catch(DMLException de){
            
        }
    }
     public void saveResults3(){
        try{
           List<Position__c> pos = new List<Position__c>();
            Position__c p1 = new Position__c(Location__c='	Hyderabad,Telangana');
            Position__c p2 = new Position__c(name='DBSR POS',Location__c='	Hyderabad,Telangana');
            Position__c p3 = new Position__c(name='DBSR POS1',Min_Pay__C =50000.00,Max_Pay__c=25000.00,Location__c='	Hyderabad,Telangana');
            Position__c p4 = new Position__c(name='DBSR POS3',Location__c='Austin,TX');
            pos.add(p1);
            pos.add(p2);
            pos.add(p3);
            pos.add(p4);
            List<Database.SaveResult> dbsr = database.insert(pos,False);
            for(Database.SaveResult dr: dbsr){
                if(dr.isSuccess()){
                   System.debug('Record inserted successfuly = '+dr.id); 
                }
                else{
                list<Database.Error> derr= dr.getErrors();
                for(database.error err : derr){
                    System.debug('Error code = '+ err.getStatusCode());
                    System.debug('Error Field = '+ err.getFields());
                    System.debug('Error Message = '+ err.getMessage());
                }
                }
            
            }
        }
        catch(DMLException de)
        {
            
        }
        
     }
    }