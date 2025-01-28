public with sharing class MathUtility {
    public static Integer addNumbers(Integer num1, Integer num2)  {
        return num1 + num2;
    }

    public static Decimal divideNumbers(Decimal num1, Decimal num2){
        if(num2 == 0){
            throw new IllegalArgumentException('Cannot Divide by 0');
        } else {
            return num1 / num2;
        }
    }

    public Integer SubtractNumber(Integer num1, Integer num2){
        return num1 - num2;
    }
}