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

//Student1 Car
/*String s1CarMake = 'Honda';
String s1CarModel = 'CRV';
Integer s1CarYear = 2000;*/
Car s1Car = new Car('Honda','CRV',2000,'orange');

//Student2 Car 
Car s2Car = new Car('Honda','Insight',2010,'blue');

//Student3 Car 
Car s3Car = new Car();
s3Car.vin = '1D7HE42K76S713734';
s3Car.colour = 'yellow';


//check engine
System.debug('S1 Car IsEngineRunning befor starting the engine: '+s1Car.isEngineRunning);
s1Car.startEngine();
System.debug('S1 Car IsEngineRunning after starting the engine: '+s1Car.isEngineRunning);
s1Car.stopEngine();
System.debug('S1 Car IsEngineRunning after Stopping the engine: '+s1Car.isEngineRunning);