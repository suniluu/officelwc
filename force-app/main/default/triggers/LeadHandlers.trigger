trigger LeadHandlers on Lead (before insert,after insert)
{
   /* if(trigger.isbefore && trigger.isinsert)
    {
        LeadHandler.sendingEmail(trigger.new);
    }*/
if(trigger.isbefore && trigger.isinsert)
    {
       LeadHandler.checkingNameOfLeadAndContact(trigger.new);
    }
    
    if(trigger.isbefore && trigger.isinsert)
    {
       LeadHandler.duplicateslead(trigger.new);
    }
    
}