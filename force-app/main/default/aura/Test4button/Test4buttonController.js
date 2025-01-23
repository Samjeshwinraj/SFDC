({
	handleClick : function(component, event, helper) {
       // event.preventDefault();
		 alert("hello there!"); 
		console.log('Enter key pressed');
        console.log(event.getParam());
	},
    
    preventDefault: function(component, event, helper) {
        event.preventDefault();
    }

})