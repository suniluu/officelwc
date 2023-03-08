public class Day40C4 {
public void sendEmail()
{
    list<string> Toaddress=new list<string>{'gs18260@gmail.com'};
        list<string> ccaddress=new list<string>{'godavarisunil875@gmail.com'};
            messaging.SingleEmailMessage emailobj=new messaging.SingleEmailMessage();
    emailobj.setToAddresses(Toaddress);
    emailobj.setCcAddresses(ccaddress);
    emailobj.setSubject('email using apex');
    emailobj.setHtmlBody('<h1>HI</h1><br>Hope you are doing well<br>Please attend client meeting on<b>08-10-2022</b>');
    messaging.sendEmail(new messaging.SingleEmailMessage[] {emailobj});
}
}