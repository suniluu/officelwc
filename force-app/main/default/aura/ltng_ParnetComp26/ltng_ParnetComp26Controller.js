({
	handleFromChild : function(component, event, helper) {
		var valuefromchild=event.getParam('storeMessage');
        component.set('v.parnetMessage',valuefromchild);
	}
})