({
	childaction : function(component, event, helper) 
    {
        var listacon=[];
        
         
      
        var params = event.getParam('arguments');
        var param1 = params.childattr1;
        
        var action = component.get('c.readcontact');
       
        
       
        action.setParams
        ({
            accountsid:param1
        });
         action.setCallback(this,function(response)
                           {
                               var Status=response.getState();
                               var Result=response.getReturnValue();
                               alert(Result);
                               component.set("v.contacts", Result); 
                               helper.secondfun(component,event,helper);
                               
                               
                               
                           });
         
  
        
        $A.enqueueAction(action);
        
        
       
       
        
      
        
 
        
    }
    
})