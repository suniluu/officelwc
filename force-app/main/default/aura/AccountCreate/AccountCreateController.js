({
	changename : function(component, event, helper) {
        var na=component.get('v.Name');
        var phh=component.get('v.Phone');
       var AnnualRevenue=component.get('v.AnnualRevenue');
        var indd=component.get('v.industry');
        var action=component.get('c.accountacc');
        action.setParams({
            
            name:na,
            phone:phh,
            indus:indd,
            ar:AnnualRevenue
        })
       
        action.setCallback(this,function(response){
            var status =response.getState();
            var result=response.getReturnValue();
            if(status=="SUCCESS")
            {
                alert("Account created successfully");
                
            }
           })
        $A.enqueueAction(action);
		
		
	}
})