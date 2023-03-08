public class Day40C6 {
public list<lead> lds=[select name,email
                      from lead  limit 1];
    list<id> ldsid=new list<id>();
    public day40C6()
    {
        for(lead l:lds)
        {
            ldsid.add(l.id);
        }
    }
    public void sendEmail()
    {
        emailtemplate et=[select id,name from emailtemplate where name='emailtemplateformassemail'];
        messaging.MassEmailMessage massemailobj=new messaging.MassEmailMessage();
        massemailobj.setTargetObjectIds(ldsid);
        massemailobj.setTemplateId(et.id);
        messaging.sendEmail(new messaging.MassEmailMessage[] {massemailobj});
    }
}