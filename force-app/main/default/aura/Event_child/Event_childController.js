({
	invoke : function(component, event, helper) {
		var compEvent = component.getEvent("MyEvent");
        compEvent.setParams({'EmpName':'sam'});
         compEvent.fire();
	}
})