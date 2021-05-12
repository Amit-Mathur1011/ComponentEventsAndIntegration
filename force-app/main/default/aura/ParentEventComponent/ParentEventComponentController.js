({
	parentTotalIncomeEvent : function(component, event, helper) {
		alert('Parent(Root) Evnt');
        var totalIncome = event.getParam('totalIncomeEvent');
        component.set('v.totalIncomeEvent',totalIncome);
        //event.stopPropagation();--> It stops the propagation and only executes the above line i.e. parent only]
	}
})