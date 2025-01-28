/**
 * This class contains unit tests for validating the behavior of Apex classes
 * and triggers.
 *
 * Unit tests are class methods that verify whether a particular piece
 * of code is working properly. Unit test methods take no arguments,
 * commit no data to the database, and are flagged with the testMethod
 * keyword in the method definition.
 *
 * All test methods in an org are executed whenever Apex code is deployed
 * to a production org to confirm correctness, ensure code
 * coverage, and prevent regressions. All Apex classes are
 * required to have at least 75% code coverage in order to be deployed
 * to a production org. In addition, all triggers must have some code coverage.
 * 
 * The @isTest class annotation indicates this class only contains test
 * methods. Classes defined with the @isTest annotation do not count against
 * the org size limit for all Apex scripts.
 *
 * See the Apex Language Reference for more information about Testing and Code Coverage.
 */
@isTest
public class MathUtilityTest {

    @isTest
    static void testAddition() {
        // preparing data
        Integer num1 = 5;
        Integer num2 = 10;

        // execute code you want to test
        Integer result = MathUtility.addNumbers(num1, num2);


        //validation
        Assert.areEqual(15, result, 'Addition result should be 15');
    }

    @isTest
    static void testDivision(){
        //Prepare data
        Decimal num1 =4;
        Decimal num2 = 2;

        //Execute code to test
        Decimal result = MathUtility.divideNumbers(num1, num2);

        //Validate
        Assert.areEqual(2, result, 'Division result should be 2');
    }

    @isTest
    static void testDivisionByZero(){
        Decimal num1 =4;
        Decimal num2 = 0;

        try {
             Decimal result = MathUtility.divideNumbers(num1, num2);
             Assert.fail('Expecting an exception');
        } catch (Exception e) {
            Assert.areEqual('Cannot divide by 0', e.getMessage(), 'As num2 is 0, we expect to get "Cannot Divide by 0" as error message');
        }
       

    }
}