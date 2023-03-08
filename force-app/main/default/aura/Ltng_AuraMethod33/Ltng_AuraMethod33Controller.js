({
	gotoauramethod : function(component, event, helper)
    {
		var childcmp=component.find("aurachild");
        var name=component.get('v.empname');
       
        var age=component.get('v.age');
      
        var salary=component.get('v.salary');
        
       childcmp.testmethod(name,age,salary);
       
	}
})