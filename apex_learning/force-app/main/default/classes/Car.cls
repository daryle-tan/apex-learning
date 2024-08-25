public with sharing class Car {
    public String make;
    public String model;
    public Integer year;
    public String vin;
    public String colour;
    public Boolean isEngineRunning;
    public Double speed;

    //constructor 
    public Car(){
        this.isEngineRunning = false;
    }

    public Car(String makeValue, String modelValue, Integer yearValue, String strColour){ 
        this.make = makeValue;
        this.model = modelValue;
        this.year = yearValue;
        this.colour = strColour;
        this.isEngineRunning = false;
    }

    public Car(String vinValue, String strColour) {
        this.vin = vinValue;
        this.colour = strColour;
    }

    //Signature
    //AccessModifier returnType methodName(Parameter Comma Separated if Any)
    public Void printDetails(){
        String strDetails='Car Details: ';
        //If make, model and year are there 
        if(String.isNotBlank(this.make) && String.isNotBlank(this.model) && this.year!=null){
            strDetails+='Make : '+this.make+' - Model : '+this.model+' - Year: '+this.year.toString();
        }else if(String.isNotBlank(this.vin)){ //if vin only is provided
            strDetails+= 'Vin: '+this.vin;
        }

        //print the color as well 
        if(String.isNotBlank(this.colour)){
            strDetails+=' With Colour : '+this.colour;
        }
        System.debug(strDetails);
    }

    //Write a method to start the car (setting isEngineRunning to true)
    //Signature
    //AccessModifier returnType methodName(Parameter Comma Separated if Any)
    public void startEngine(){
        this.isEngineRunning = true;
    }

    public void stopEngine(){
        this.isEngineRunning = false;
    }

}