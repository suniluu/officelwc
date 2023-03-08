({
	getpositions : function(component, event, helper) {
        var action=component.get('c.positionrecords');
        action.setCallback(this,function(response)
                           {
                               var status = response.getState();
                               var result = response.getReturnValue();
                               if(status=="SUCCESS")
                               {
                                   component.set('v.positions',result);
                               }
                               
                           });
        //3. add action to job queue for execution
        $A.enqueueAction(action);
        
    }
})