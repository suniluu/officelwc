({
    createJob : function(component, event, helper) 
    {
        var empid=component.get('v.empid');
       var pid=component.get('v.recordId');
        var action = component.get('c.readjp');	
      alert('hi');
         action.setParams
        ({
           emp:empid,
            pid:pid
        });
         action.setCallback(this,function(response)
                           {
                               var Status=response.getState();
                               var Result=response.getReturnValue();
                               alert(Status)
                               if(Status=="SUCCESS")
                               {
                                   alert('Job positing Created Successfully');
                               }
                               
                           });
        
        $A.enqueueAction(action);
    }
})