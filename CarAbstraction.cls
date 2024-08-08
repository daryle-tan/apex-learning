public with sharing class Car {
    public void startCar() {
        startEngine();
        checkSystems();
        injectFuel();
    }

    private void startEngine() {
        System.debug('Engine started');
    }

    private void checkSystems() {
        System.debug('Systems checked');
    }

    private void injectFuel() {
        System.debug('Fuel injected');
    }
    
}