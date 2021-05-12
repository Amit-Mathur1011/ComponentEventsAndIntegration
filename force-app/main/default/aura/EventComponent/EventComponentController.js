({
    init : function(component, event, helper) {
        component.set('v.columns' , [
            {label: 'SNo.', fieldName: 'sno', type: 'number'},
            {label: 'Name of Source', fieldName: 'source', type: 'text'},
            {label: 'Amount', fieldName: 'amount', type: 'number'}
        ]);
        
        component.set('v.data' , [
            {
                sno : 1 , 
                source : 'Regular Job' ,
                amount : 10000
            },
            {
                sno : 2 , 
                source : 'Part Time Job' ,
                amount : 5000
            }
        ]);
    },
    
    handleShowHide : function(component,event,helper){
        var toggle = component.find('incomeForm');
        $A.util.toggleClass(toggle ,'hide');
    },
    
    calculateTotalIncome : function(component,event,helper){
        var data = component.get('v.data');
        var totalIncome = 0;
        
        for(var i=0 ; i< data.length ;i++){
            totalIncome += data[i].amount;
        }
        var totalInconeEvent = component.getEvent('cmpEvent');
        totalInconeEvent.setParams({totalIncomeEvent : totalIncome});
        totalInconeEvent.fire();
    },
    
    incomeEvent : function(component,event,helper){
        alert('Bubble Phase--->Source(Child)EVENT FIRED!!!');
    },
    
    addIncome : function(component,event,helper){
        var data = component.get('v.data');
        var newData = {
            sno : data.length +1 ,
            source : component.find('source').get('v.value') ,
            amount : parseFloat(component.find('amount').get('v.value'))
        }
        data.push(newData);
        component.set("v.data",data);
        //component.find('source').set('v.value','');
        //component.find('amount').set('v.value','');
    }
})