({
	Createcontact : function(component, event, helper) {
        var lName=component.get('v.LastName');
        var fName=component.get('v.FirstName');
        var phone=component.get('v.Phone');
        var email=component.get('v.Email');
        var recid=component.get('v.recordId');
        var action=component.get('c.newcontact');
      
        action.setParams({
            ln:lName,
            fn:fName,
            ph:phone,
            em:email,
            aid:recid
        });
        action.setCallback(this,function(response)
                           {
                               var status=response.getState();
                               var result=response.getReturnValue();
                               if(status=="SUCCESS")
                               {
                                   alert('created contact succesfully')
                                  
                                   
                               }
                           });
        
		$A.enqueueAction(action);
	}
})