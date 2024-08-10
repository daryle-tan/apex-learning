public class Car {
    private String make;
    private String model;
    private Boolean isEngineRunning;

    public Car(String make, String model) {
        this.make = make;
        this.model = model;
        this.isEngineRunning = false;
    }

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