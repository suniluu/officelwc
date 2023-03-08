({
    doInit : function(component, event, helper) {
        var Caseid = component.get("v.recordId");
       component.find("createposRecord").get(
          'v.recordFieldToQuery.Location__c'
       );
        
        
    }
})