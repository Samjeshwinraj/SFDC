({
	call : function(component, event, helper) {
    var aval=component.find("aval").get("v.value");
    var bval=component.find("bval").get("v.value");
    var Res=aval+bval;
	component.find("Res").set("v.value",component.find("aval").get("v.value")+component.find("bval").get("v.value"));
    component.set("v.user","sam");
	}
    
})