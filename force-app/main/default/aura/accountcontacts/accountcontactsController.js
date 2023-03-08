({
	searchcontacts : function(component, event, helper) {
        var pid=component.get('v.recordId');
        var action=component.get('c.readcontact');
        
        action.setParams({
            accountsid:pid
        });
        action.setCallback(this,function(response)
                           {
                               var status=response.getState();
                               var result=response.getReturnValue();
                               if(status=="SUCCESS")
                               {
                                   component.set('v.contacts',result);
                               }
                           });
        
		$A.enqueueAction(action);
	}
})