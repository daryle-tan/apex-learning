@isTest
public with sharing class Post_Example_Test {
    @isTest
    public static void sendPOSTReq_Test(){
        
        Test.setMock(HttpCalloutMock.class, new Post_Example_Mock_Generator());
        Test.startTest();
            POST_Example postEx = new POST_Example();
            postEx.sendPOSTReq();
        Test.stopTest();
        Assert.areEqual('{"PostRes":"Hi There"}', res, 'Callout response was not as expected');
    }
}