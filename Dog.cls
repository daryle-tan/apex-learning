public class Dog extends Animal {

    //Constructor
    public Dog(String name, Integer age, String breed, String color) {
       super(name, age, breed, color);
    }
    //public method
    public void makeSound() {
        System.debug('Dog: '+name+' is barking');
    }
}