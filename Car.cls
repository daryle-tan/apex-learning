public with sharing class Car {
    private String make;
    private String model;
    private Boolean isEngineRunning;

    public Car(String make, String model) {
        this.make = make;
        this.model = model;
        this.isEngineRunning = false;
    }
    // static method
    public static Integer convertMphToKphh(Integer mph) {
        return 0;
    }
    // instance method
    private void startEngine() {
        this.isEngineRunning = true;
    }

    private void stopEngine() {
        this.isEngineRunning = false;
    }

    public void operateCar() {
        startEngine();
        System.debug('Car is running');
        stopEngine();
        System.debug('Car stopped running');
    }
}