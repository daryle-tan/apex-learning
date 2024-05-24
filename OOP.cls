public with sharing class Car {
    public String make;
    public String model;
    public Integer year;
    public String vin;
    public String color;
    public Boolean isCarRunning;
}

Car s1Car = new Car();

s1Car.make = 'Honda';
s1Car.model = 'CRV';
s1Car.year = 2006;
s1Car.isCarRunning = false;
s1Car.color = 'orange';
System.debug(s1Car);

Car s3Car = new Car();

s3Car.isCarRunning = false;
s3Car.color = 'Blue';
s3Car.vin = '1D7HE42K76S713734';
System.debug(s3Car);