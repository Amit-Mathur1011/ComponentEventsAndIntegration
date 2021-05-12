@isTest
global class HttpMock implements HttpCalloutMock {
    
    global HttpResponse respond(HttpRequest request){
        HttpResponse response = new HttpResponse();
        response.setStatusCode(200);
        response.setHeader('Content-Type', 'application/json');
        response.setBody('{"author":"Jyoti Jangid","blogs":[{"id":"1","title":"Salesforce Integration Tutorial Part1 - Introduction and Setting up Workbench","url":"https://www.sfdcstop.com/2019/11/salesforce-integration-tutorial-part-1.html"},{"id":"2","title":"Salesforce Integration Tutorial Part 2 - Exploring GET Method","url":"https://www.sfdcstop.com/2019/11/salesforce-integration-tutorial-part-2.html"}]}');
        return response;
        
    }
    
}