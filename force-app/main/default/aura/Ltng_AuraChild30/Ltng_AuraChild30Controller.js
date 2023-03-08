({
	childaction : function(component, event, helper) 
    {
		var params=event.getParam('arguments');
        if(params)
        {
            var param1=params.childattr;
        }
        return param1 +'Appended text from child method' ;
	}
})