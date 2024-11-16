public with sharing class Computer {

    private String computerType = 'Gaming';

    public Computer(String computerTypePassed){
        System.debug('Original computer type: '+computerType);
        computerType = computerTypePassed;
        System.debug('New computer type: '+computerType);
    }

    private String powerUp(Integer voltage, String welcomeString, Sobject obj) {
        voltage = 8;
        welcomeString = 'Taco Bueno';
        return welcomeString;
    }

    private (String,Integer) powerDown(Integer voltage) {
        voltage = 0;
        return ('Power if off', voltage);
    }
}

Computer comp = new Computer();
