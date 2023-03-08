trigger displayCreatedBynameOnPostions on Position__c (before update)
{
    if(trigger.isbefore && trigger.isupdate)
    {
        displayingCreatedBynameOnPostions.updateUserNameOfPosition(trigger.new);
    }

}