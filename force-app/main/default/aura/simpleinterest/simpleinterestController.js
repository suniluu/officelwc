({
    
    calintrest : function(component, event, helper) 
    {
        var pamnt=component.get('v.pamount');
        var rofi=component.get('v.ratofint');
        var noy=component.get('v.noofyears');
        var sii=parseInt(pamnt*noy*rofi/100)
        var totalawthint=parseInt(pamnt)+parseInt(sii);
        component.set('v.si',sii);
        component.set('v.amounttortrn',totalawthint); 
		
	}
})