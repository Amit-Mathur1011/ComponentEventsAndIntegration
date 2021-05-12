@isTest
public with sharing class httpCalloutTest {

    public static Integer RESPONSE_CODE = 200;
    public static String RESPONSE_HEADER_KEY = 'Content-Type';
    public static String RESPONSE_HEADER_VALUE = 'application/json';
    public static String RESPONSE_BODY = '{"author":"Jyoti Jangid","blogs":[{"id":"1","title":"Salesforce Integration Tutorial Part1 - Introduction and Setting up Workbench","url":"https://www.sfdcstop.com/2019/11/salesforce-integration-tutorial-part-1.html"},{"id":"2","title":"Salesforce Integration Tutorial Part 2 - Exploring GET Method","url":"https://www.sfdcstop.com/2019/11/salesforce-integration-tutorial-part-2.html"}]}';

    // Method to test getBlogs() method
    @isTest
    public static void testGetBlogs() {
        Test.startTest();
        // Setting up the mock response
        Test.setMock(HttpCalloutMock.class, new HttpMock());
        // Performing the API callout
        HTTPResponse response = HttpCallouts.getBlogs();
        // Verifying the response information
        System.assertEquals(RESPONSE_CODE, response.getStatusCode());
        System.assertEquals(RESPONSE_HEADER_VALUE, response.getHeader(RESPONSE_HEADER_KEY));
        System.assertEquals(RESPONSE_BODY, response.getBody());
        Test.stopTest();
    }

   
}