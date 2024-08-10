public class AnimalsUtility {
    // public static void handleDog(List<Dog> lstDogs) {
    //     for(Dog dog : lstDogs) {
    //         System.debug('======Start======');
    //         dog.printDetails();
    //         dog.makeSound();
    //         System.debug('======Start======');
    //     }
    // }

    // public static void handleCat(List<Cat> lstCats) {
    //     for(Cat cat : lstDogs) {
    //         System.debug('======Start======');
    //         cat.printDetails();
    //         cat.makeSound();
    //         System.debug('======Start======');
    //     }
    // }

    public static void handleAnimal(List<Animal> lstAnimals) {
        for(Animal animal : lstAnimals) {
            System.debug('======Start======');
            animal.printDetails();
            animal.makeSound();
            System.debug('======Start======');
        }
    }
}