public class Day40H7 {
    public user u;
    list<string> Toaddress=new list<string>();
    public day40h7()
    {
        u=[select name,email from user where lastname='B3rec'];
        Toaddress.add(u.Email);
    }
    public void show()
    {
        
        Document doc=[select id,name from Document where name='Myphoto'];
        Messaging.SingleEmailMessage myEmail=new messaging.SingleEmailMessage();
        myemail.setEntityAttachments(new id[] {doc.id});
        myemail.setToAddresses(Toaddress);
        
        myemail.setSubject('Image');
        myemail.setHtmlBody('hi <b>File Attached<b/>');
        Messaging.sendEmailResult[] res = messaging.sendEmail(new messaging.SingleEmailMessage[] {myemail}); 
        
        for( Messaging.sendEmailResult r1:res)
        {
            if(!r1.Issuccess())
            {
                system.debug(r1.getErrors());
            }
            else
            {
                system.debug('Image sent successfully');
            }
        }
        
    }
}