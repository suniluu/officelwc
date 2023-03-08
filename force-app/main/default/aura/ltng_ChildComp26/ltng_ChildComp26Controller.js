({
	handleEvent : function(component, event, helper) {
        var CmpEvt= component.getEvent('regInChild');
           CmpEvt.setParams({
            storeMessage:component.get('v.textMessage')
        });
        CmpEvt.fire();
	}
})