trigger empolmentwebsitetrigger on Empolyment_Website__c (before insert) {
  if(trigger.isbefore && trigger.isinsert )
    {
        empolmentwebsitehandler.calculatingTax(trigger.new);
    }

}