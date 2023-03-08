({
	handleClick : function(cmp, event, helper) {
        cmp.find("deleteRecord").deleteRecord($A.getCallback(function(saveResult){
            if(saveResult.state=="SUCCESS" || saveResult.state=="DRAFT")
            {
              alert("Account record update successfully");  
            }
            else if(saveResult.state=="INCOMPLETE"){
               alert("Error in update Account record "); 
            }else{
                alert("Problem in updating Account record "+JSON.stringify(saveresult.error)); 
            }
            
        }));

	}
})