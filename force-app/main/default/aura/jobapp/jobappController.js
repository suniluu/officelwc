({
    createJob : function(component, event, helper) 
    {
        var status=component.get('v.Status');
        var pid=component.get('v.recordId');
        
        var action = component.get('c.createjobap');	
        action.setParams
        ({
            status:status,
            pid:pid
        });
         action.setCallback(this,function(response)
                           {
                               var Status=response.getState();
                               var Result=response.getReturnValue();
                               alert(Status)
                               if(Status=="SUCCESS")
                               {
                                   alert('Job Application Created Successfully');
                               }
                               
                           });
        
        $A.enqueueAction(action);
    }
})