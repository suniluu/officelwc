({
    init: function (component, event, helper) {
        var pi=component.get('v.recordId');
        
        var action = component.get('c.accounts');
        action.setParams({
            aid:pi
        });
          action.setCallback(this,function(response)
                           {
                               var Status=response.getState();
                               var Result=response.getReturnValue();
                               if(Status=="SUCCESS")
                               {
                                   
                                   component.set('v.Location',Result);
                                   helper.secondfuns(component, event, helper) ;
                                  
                                    
                               }
                           });
      
        $A.enqueueAction(action);

    }
});