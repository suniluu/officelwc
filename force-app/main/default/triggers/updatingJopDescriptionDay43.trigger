trigger updatingJopDescriptionDay43 on Position__c (before insert,before update) {
    
  if(trigger.isbefore && (trigger.isinsert || trigger.isupdate))
   {
       updatingJobDescription.updatejd(trigger.new);

       
   }
    /*if(trigger.isbefore &&  trigger.isupdate)
   {
       
       updatingJobDescription.displayName(trigger.new);
       
   }*/

}