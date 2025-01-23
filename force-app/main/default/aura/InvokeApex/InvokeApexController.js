({
	call : function(component, event, helper) {
	var action=component.get("c.getAccountData");
        action.setCallback(this,function(response){
         component.set("v.Accounts",response.getReturnValue());
           
        });
        $A.enqueueAction(action);
    } 
})