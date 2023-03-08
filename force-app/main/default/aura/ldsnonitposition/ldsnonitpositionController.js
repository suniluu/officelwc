({
    doInit : function(component, event, helper)
    {
        component.find("createposRecord").getNewRecord(
            "Position__c",
            "0125g000000eSRqAAM",
            false,
            $A.getCallback(function(){
                var conrec=component.get("v.newPosRecord");
                var error=component.get("v.recordError");
                
                if(error||conrec == null)
                {
                    alert('Error in creation Position');
                }
                else
                {
                    alert('template initalize success');
                }
                
            })
            
        );	
    },
    createpos : function(component, event, helper)
    {
       
        component.find("createposRecord").saveRecord($A.getCallback(function(saveResult)
                                                                    {
                                                                     if(saveResult.state=="SUCCESS" || saveResult.state=="DRAFT")
                                                                     {
                                                                         alert("Creation Of Position successfully");  
                                                                     }
                                                                     else if(saveResult.state=="INCOMPLETE")
                                                                     {
                                                                         alert("Error in Position record ");
                                                                     }
                                                                     else
                                                                     {
                                                                         alert("Problem in creating  Position record "+JSON.stringify(saveResult.error));
                                                                     }
                                                                     
                                                                 }));
    }
})