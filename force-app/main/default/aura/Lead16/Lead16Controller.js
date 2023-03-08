({
	searchLeads : function(component, event, helper) {
        var str1=component.get('v.sIndustry');
        var action=component.get('c.readLeads');
        alert(str1);
        action.setParams({
            searchIndus:str1
        });
        action.setCallback(this,function(response)
                           {
                               var status=response.getState();
                               var result=response.getReturnValue();
                               if(status=="SUCCESS")
                               {
                                   component.set('v.Leads',result);
                               }
                           });
        
		$A.enqueueAction(action);
	}
})