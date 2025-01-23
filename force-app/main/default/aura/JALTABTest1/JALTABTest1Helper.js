({
    handleActive: function (cmp, event) {
        var tab = event.currentTarget;
        switch (tab.id) {
            case 'home' :
				console.log('Hello');
                //this.navigateToMyComponent(cmp, event);
                break;
            case 'contact' :
                //this.injectComponent('c:Support', tab);
                this.navigateToSupportCmp(cmp, event);
                break;
            case 'capability':
                //this.navigateToMyComponent(cmp, event);
                break;
            case 'connect':
                //this.navigateToMyComponent(cmp, event);
                break;
			case 'news':
                //this.navigateToMyComponent(cmp, event);
                break;
        }
    },
  
	
 
   navigateToSupportCmp : function(component, event) {
		console.log('hello2');
		 var pageReference = {
            type: 'standard__component',
            attributes: {
                componentName: 'c__Support',
            },
            state: {
                
            }
        }
        component.set("v.pageReference", pageReference);
		var navService = component.find("navService");
        var pageReference = component.get("v.pageReference");
		console.log(JSON.stringify(pageReference));
        event.preventDefault();
        navService.navigate(pageReference);
	console.log('hello3');
	},
 navigateToSupportpage : function(component, event) {
		console.log('hello2');
    var pageReference = {  
    
    type: "comm__namedPage",
    attributes: {
        name: "Support__c"
    	}
	
 }
    component.set("v.pageReference", pageReference);
		var navService = component.find("navService");
        var pageReference = component.get("v.pageReference");
		console.log(JSON.stringify(pageReference));
        event.preventDefault();
        navService.navigate(pageReference);
	console.log('hello3');
   }
 
     
});