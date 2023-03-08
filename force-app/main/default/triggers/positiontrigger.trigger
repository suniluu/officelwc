trigger positiontrigger on Position__c (before update) {

  if(trigger.isbefore&& trigger.isupdate )
    {
        positionhandler.settingownername(trigger.new);
    }


}