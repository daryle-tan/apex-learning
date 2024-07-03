public with sharing class MathUtils {
    public Integer addNumbers(List<Integer> lstNumbers) {
        Integer sum = 0;
        for(Integer numberValue : lstNumbers) {
            sum += numberValue;
        }
        return sum;
    }

    public Integer addNumbers(Integer number1, Integer number2) {
        return number1 + number2;
    }
}

// With non static methods, you need to create an instance of the class to use the methods (aka object)
