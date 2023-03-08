({
    getpositions : function(component, event, helper)
    {
        var action=component.get('c.readpos');
        action.setCallback(this,function(response)
                           {
                               var status = response.getState();
                               var result = response.getReturnValue();
                               if(status=="SUCCESS")
                               {
                                   component.set('v.Position__c',result);
                               }
                           });
        $A.enqueueAction(action);
        
    }
})