({
secondfuns : function(component, event, helper) {
        var selectedRows = component.get("v.Location");
    
    
     for(var i=0;i<selectedRows.length;i++)
        {
           
            
           var c=selectedRows[i].BillingCity;
       
         var st=selectedRows[i].BillingState;
       
            
            component.set('v.mapMarkers', [
                    {
                        location: {
                  
                    City: c,
                   
                    State: st
                   
                }
                       
                    }
                ]);
         
                component.set('v.zoomLevel', 12);
          
  
        }
}
})