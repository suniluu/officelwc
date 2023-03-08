({
    doInit : function(component, event, helper)
    {
        component.find("createcanRecord").getNewRecord(
            "Candidate__c",
            null,
            false,
            $A.getCallback(function(){
                var conrec=component.get("v.newcanRecord");
                var error=component.get("v.recordError");
                
                if(error||conrec == null)
                {
                    alert('Error in creation Candidate');
                }
                else
                {
                    alert('template initalize success');
                }
                
            })
            
        );	
    },
    createcan : function(component, event, helper)
    {
       
        component.find("createcanRecord").saveRecord($A.getCallback(function(saveResult)
                                                                    {
                                                                     if(saveResult.state=="SUCCESS" || saveResult.state=="DRAFT")
                                                                     {
                                                                         alert("Creation Of Candidate successfully");  
                                                                     }
                                                                     else if(saveResult.state=="INCOMPLETE")
                                                                     {
                                                                         alert("Error in Candidate record ");
                                                                     }
                                                                     else
                                                                     {
                                                                         alert("Problem in creating  Candidate record "+JSON.stringify(saveResult.error));
                                                                     }
                                                                     
                                                                 }));
         var navservice = component.find('navService');
        var pageref={
            type:'standard__objectPage',
            attributes:{
                objectApiName: 'Job_Application__c',
                actionName: 'list'
            },
            state:{
                filterName:'All'
            }
        };
        navservice.navigate(pageref);
    }
       
		
	
})