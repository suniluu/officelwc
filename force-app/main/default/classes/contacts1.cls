public class contacts1 {

@AuraEnabled
    public static list<contact> readcontact(id accountsid)
    {
        list<contact>cons=[select LastName,phone,email from contact
                               where AccountId=:accountsid ];
     
        
        
        return cons;
    }


}