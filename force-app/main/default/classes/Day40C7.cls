public class Day40C7 {
public account acc;
    public day40c7()
    {
        acc=[select id,name from account where name='Abhi v'];
        
    }
    public pagereference show()
    {
        Messaging.SingleEmailMessage myEmail=new messaging.SingleEmailMessage();
        messaging.EmailFileAttachment email=New messaging.EmailFileAttachment();
        pagereference pdf=page.myaccount;
        pdf.getParameters().put('id',(string)acc.id);
        pdf.setredirect(true);
        blob b=pdf.getContent();
        Email.setfileName('myaccount.pdf');
        email.setBody(b);
        myemail.setSubject('account details');
        String[] Toadd=new String[] {'email'};
            myemail.setToAddresses(Toadd);
        myemail.setPlainTextBody('please find the attachement');
        myemail.setFileAttachments(New messaging.EmailFileAttachment[] {email});
        messaging.sendemail(new messaging.email[] {Myemail});
        return null;
    }
}