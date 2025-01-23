({
    handleClick: function(cmp, event, helper) {
		 var pageReference = {
            "type": "standard__component",
            "attributes": {
                "componentName": "c__NavigationTestInterf"
            }, 
    		"state": {}
        };
		cmp.set("v.pageReference", pageReference);
        var navService = cmp.find("navService");
        // Uses the pageReference definition in the init handler
        //var pageReference = cmp.get("v.pageReference");
		console.log(JSON.stringify(pageReference));
        //event.preventDefault();
		console.log("Hii");
        navService.navigate(pageReference);
    },
    navigate1 : function(component, event, helper) {
        var navigateEvent = $A.get("e.force:navigateToComponent");
        navigateEvent.setParams({
            componentDef: "c:NavigationTestInterf"
            
        });
        console.log("Hi");
        navigateEvent.fire();
    },
    reinit: function(component, event, helper) {
	console.log("Hi1");
        $A.get('e.force:refreshView').fire();
    }

})