public with sharing class Computer {

    private String computerType = 'Gaming';

    public Computer(String computerTypePassed){
        System.debug('Original computer type: '+computerType);
        computerType = computerTypePassed;
        System.debug('New computer type: '+computerType);
    }

    private String powerUp(Integer voltage, String welcomeString, SObject obj) {
        voltage = 8;
        welcomeString = 'Taco Bueno';
        return welcomeString;
    }

    private (String,Integer) powerDown() {
        return 'Power if off';
    }

    public void operatorExamples(){
        Integer value1 = 1;
        Integer value2 = 2;

        value1++;
        value2--;

        if(value1 == 2 && value2 <= 2){
            System.debug('We got in the block');
        }

        System.debug('This is value 1::: '+value1 + ' ::: This is value2 ::: '+value2);
    }

    public static void integerListExample(){
        Integer number12 = 12;
        List<Integer> numberList = new List<Integer>();
        numberList.add(number12);
        numberList.add(1);
        // numberList.addAll()
    }

    public static void integerSetExample(){
        Set<Integer> integerSet = new Set<Integer>();
        integerSet.add(1);
        integerSet.add(200);
        integerSet.add(1);
        integerSet.remove(1);
        System.debug('This is theh integer set:::'+integerSet);
    }
    
}

Computer comp = new Computer();
String returnedString = comp.powerDown();