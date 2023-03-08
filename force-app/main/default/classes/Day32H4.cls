public class Day32H4 {
    public void displayaccountrecords()
    {
        Account a=[select name,email__c,Branches__c
                   from Account
                   where Email__c='asdf@gmial.com'];
        System.debug(a);
    }
    
}