({
	handleFromChild : function(component, event, helper) {
        var valFromEvt=event.getParam('storeMessage');
        
        component.set('v.parnetMessage',valFromEvt);
		
	}
})