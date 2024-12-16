@isTest
public with sharing class Demo_Test {
    @isTest
    public static void multiplyNumbers_Pos(){
        
        Test.startTest();
        DemoClass demClass = new DemoClass();
        Integer multipliedNumber = demClass.multiplyNumbers(7,2);
        Test.stopTest();
    }

}