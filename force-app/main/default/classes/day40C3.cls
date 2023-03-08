public class day40C3 {
public void sendEmail()
{
    list<string> Toaddress=new list<string>{'gs18260@gmail.com'};
    list<string> ccaddress=new list<string>{'godavarisunil875@gmail.com'};
    messaging.SingleEmailMessage emailobj=new messaging.SingleEmailMessage();
    emailobj.setToAddresses(Toaddress);
    emailobj.setCcAddresses(ccaddress);
    emailobj.setSubject('email using apex');
    emailobj.setPlainTextBody('hi welcome to email world');
    messaging.sendEmail(new messaging.SingleEmailMessage[] {emailobj});
}
}