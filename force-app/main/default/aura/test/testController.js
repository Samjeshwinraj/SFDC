({
 doInit : function(component, event, helper) {
    var editRecordEvent = $A.get("e.force:editRecord");
	console.log($A.get("e.force:editRecord"));
    editRecordEvent.setParams({
         "recordId": component.get("v.recordId"),
        "SaveEdit":false
     
   });
    console.log(JSON.stringify(editRecordEvent.getParams()));
     var isDefined = !$A.util.isUndefined(component.find("v.SaveEdit"));
     var isEmpty = $A.util.isEmpty(component.find("v.SaveEdit"));
     console.log(isDefined);
     console.log(isEmpty);
     var btn1 =component.find("v.SaveEdit");
     //btn1.set("v.disabled",true);
     //var btn1 =component.get("v.SaveEdit");
     //btn1.set("v.disabled",true);
     
    console.log(editRecordEvent.fire());
     var isDefined = !$A.util.isUndefined(component.get("v.SaveEdit"));
     var isEmpty = $A.util.isEmpty(component.get("v.SaveEdit"));
     console.log(isDefined);
     console.log(isEmpty);
     var btn2 =component.find("v.SaveEdit");
    // btn2.set("v.disabled",true);
     //var btn1 =component.get("v.SaveEdit");
    // btn1.set("v.disabled",true);
     
     
}
})