trigger Emailtoceoandcaseowner on Case (after update) 
{
    if(trigger.isAfter && trigger.isupdate)
    {
        Emailtoceoandcaseowner.email(trigger.new);
    }
 if(trigger.isbefore && (trigger.isinsert || trigger.isupdate))
     {
         Emailtoceoandcaseowner.checkingCaseOrigin(trigger.new);
     }
}