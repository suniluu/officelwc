({
	searchAccounts : function(component, event, helper) {
		var str1=component.get('v.sIndustry');
        alert(str1);
    var action=component.get('c.readAccounts');
        action.setParams ({
            searchIndus:str1
        });
        action.setCallback(this,function(response)
                           {
                               var status=response.getState();
                               var result=response.getReturnValue();
                               if(status=="SUCCESS")
                               {
                                   component.set('v.Accounts',result)
                               }
                           });
        $A.enqueueAction(action);
        
    }
})