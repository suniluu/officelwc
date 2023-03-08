({
	handleSaveChange : function(component, event, helper) {
        component.find("SavingRecord").saveRecord($A.getCallback(function(saveResult){
            if(saveResult.state=="SUCCESS")
            {
                alert("Changes saved Successfully");
            }
            else if(saveResult.state=="INCOMPLETE")
            {
                alert("Error in saving record");
            }
            else if(saveResult.state=="ERROR")
            {
                alert("Problem saving record,error:"+JSON.stringfy(saveResult.error));
            }
            else
            {
                alert('Unkown problem state:'+saveResult.state+',error:'+JSON.stringfy(saveResult.error))
            }
        }));
	}
})