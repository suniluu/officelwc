trigger UpdatingContacts on Contact (after insert,after delete,before insert,before update) 
{
     /*if(trigger.isafter &&(trigger.isinsert))
    {
        UpdatingContacts.countContacts(trigger.new);
    }*/
  /*  if(trigger.isafter &&(trigger.isdelete))
    {
        UpdatingContacts.countContacts(trigger.old);
    }*/
    
    /*if(trigger.isbefore && (trigger.isinsert || trigger.isupdate))
       {
           UpdatingContacts.checkingLastname(trigger.new);
       }*/
      if(trigger.isafter && trigger.isinsert)
      {
          UpdatingContacts.sendingEmailWhenContactIsInserted(trigger.new);
      }
    
    /*if(trigger.isbefore && (trigger.isinsert || trigger.isupdate))
    {
        UpdatingContacts.preventingDuplicateRecords(trigger.new);
    }*/
}