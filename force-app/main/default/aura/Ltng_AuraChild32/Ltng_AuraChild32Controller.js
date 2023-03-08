({
	childaction : function(component, event, helper) 
    {
		var params=event.getParam('arguments');
        if(params)
        {
            var name=params.empname;
            
            var age=params.age;
            var salary=params.salary;
        }
     
         name=name+'Ccx';
       
         age=parseInt(age)+1;
        
         salary=parseInt(salary)+parseInt(salary)*0.10;
         component.set('v.empname1',name);
        
                 component.set('v.age1',age);
                 component.set('v.salary1',salary);
	}
})