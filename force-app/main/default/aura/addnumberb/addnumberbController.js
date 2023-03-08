({
	addNum : function(component, event, helper) {
	    var fNum = component.find("fn").get('v.FNumber');
        var sNum = component.find("Sn").get('v.SNumber');
        var res = parseInt(fNum)+parseInt(sNum);
        component.set('v.Result',res);
      }
})