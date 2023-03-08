({
	gototauramethod : function(component, event, helper) {
        var chldcmp=component.find("aurachild");
        var parentvalue=component.get('v.recordId');
        var result=chldcmp.testmethod(parentvalue);
        //alert(result);
        
       
        
     
        //component.set('v.empname1',result[0]);
       // component.set('v.empsalary1',result[1]);
       // component.set('v.empage1',result[2]);
		
	}
})