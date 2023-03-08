({
	handleEvent : function(component, event, helper) {
        var appEvt=$A.get("e.c:ltng_AppEvent27");
        appEvt.setParams({
            storeMessage:component.get('v.textMessage')
           
        });
        
         appEvt.fire();
	}
})