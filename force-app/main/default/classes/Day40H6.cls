public class Day40H6 {
    public list<contact> con=[select lastname,email from contact where MailingCity='Hyd'];
    list<id> cid=new list<id>();
    public Day40H6()
    { 
        for(contact c:con)
        {
            cid.add(c.id);
        }
    }
    public void sendEmail()
    {
        emailtemplate et=[select id,name from emailtemplate where name='Inaugural function'];
        messaging.MassEmailMessage massemailobj=new messaging.MassEmailMessage();
        massemailobj.setTargetObjectIds(cid);
        massemailobj.setTemplateId(et.id);
        messaging.sendEmail(new messaging.MassEmailMessage[] {massemailobj});
    }
}