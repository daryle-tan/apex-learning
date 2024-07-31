public with sharing class MathUtils {
    public static Integer addNumbers(List<Integer> lstNumbers) {
        Integer sum = 0;
        for(Integer numberValue : lstNumbers) {
            sum += numberValue;
        }
        return sum;
    }

    public static Integer addNumbers(Integer number1, Integer number2) {
        return number1 + number2;
    }
}

//Subtraction
    public static Integer substractNumbers(Integer number1, Integer number2) {
        return number1 - number2;
    }

//Average
    public static Double average(List<Double> lstNumbers) {
        Double sum = 0;
        for(Double numberValue : lstNumbers) {
            sum+= numberValue;
        }
        return sum/lstNumbers.size();
    }

// With non static methods, you need to create an instance of the class to use the methods (aka object)
//Static methods are called on the class itself Classname.methodName()
// The this keyword refers to the current instance of the class. Differentiates between class attributes and parameters with the same name. Calls other constructors within a constructor. Passes the current object as a parameter to other methods.