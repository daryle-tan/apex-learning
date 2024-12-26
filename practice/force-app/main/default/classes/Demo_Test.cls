@isTest
public with sharing class Demo_Test {
    @TestSetup
    public static void makeData(){
       List<Case> caseList = TestDataFactory.createCases(3);
       insert caseList;
    }

    @isTest
    public static void multiplyNumbers_Pos(){
        Test.startTest();
        System.runAs(new User()){
            DemoClass demClass = new DemoClass();
            Integer multipliedNumber = demClass.multiplyNumbers(7,2);
        }   
        Test.stopTest();
        // Assert.areEqual(14, multipliedNumber, 'The returned value was not multiplied correctly');
    }

    @isTest
    public static void caseToUpdater_Pos(){
        List<Case> caseList = [SELECT Id, Subject FROM Case WHERE Subject='Hi There'];
        Test.startTest();
        DemoClass demClass = new DemoClass();
        demClass.caseUpdater(caseList[0]);
        Test.stopTest();
        Assert.areEqual('Kewl Story Bruh', caseList[0].Subject, 'Subject not updated');
    }

}