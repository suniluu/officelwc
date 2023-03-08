({
	gotoaura : function(component, event, helper)
    {
		var childcmp=component.find("aurachild");
        var parentvalue=component.get("v.parentattr");
        
        var result=childcmp.testmethod(parentvalue);
        component.set('v.parentattr',result);
	}
})