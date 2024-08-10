public class Cat extends Animal {

    public Cat(String name, Integer age, String breed, String color) {
       super(name, age, breed, color);
    }

    public override void makeSound() {
        System.debug('Cat: '+name+' is meowing');
    }
}