({
    handleActive: function (cmp, event) {
        var tab = event.getSource();
        switch (tab.get('v.id')) {
            case 'home' :
				console.log('Hello');
                //this.navigateToMyComponent(cmp, event);
                break;
            case 'support' :
                this.injectComponent('c:Support', tab);
                break;
                //this.navigateToSupportComponent(cmp, event);
                
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
  
	navigateToSupportComponent : function(component, event) {
		console.log('hello2');
		 var pageReference = {
            type: 'standard__component',
            attributes: {
                componentName: 'c__Support',
            },
            state: {
                
            }
        };
        component.set("v.pageReference", pageReference);
		var navService = component.find("navService");
       // var pageReference = component.get("v.pageReference");
		console.log(pageReference);
        event.preventDefault();
        navService.navigate(pageReference);
	console.log('hello3');
	},
        injectComponent: function (name, target) {
        $A.createComponent(name, {
            // no attrs
        }, function (contentComponent, status, error) {
            if (status === "SUCCESS") {
                target.set('v.body', contentComponent);
            } else {
                throw new Error(error);
            }
        });
    }
     
});