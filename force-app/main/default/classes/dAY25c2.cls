public class dAY25c2 {
	Account acc=new account(Name='Acctest1',Industry='Education',Phone='98989890');
    Position__c p=new Position__c(Name='Sobject Position',Min_Pay__c=20000.00,Functional_Area__c='Information Technology');
    public void insertRec()
    {
        insert acc;
        insert p;
    }
    Public void putgetMethod(){
        Account acc2=new Account();
        acc2.put('Name','ccxtest2');
        acc2.put('Industry','Electronics');
        acc2.put('Phone','99898989');
        insert acc2;
        System.debug('Acc2 Name='+acc2.get('Name'));
         System.debug('Acc2 Industry='+acc.get('Industry'));
         System.debug('Acc2 phone='+acc.get('Phone'));
    }
}