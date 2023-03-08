({
	transfer : function(component, event, helper) {
		var newname=component.get('v.myName');
        component.set('v.myName2',newname);
	}
})