public virtual class Animal {
    public String name;
    public Integer age;
    public String breed;
    public String color;

    public Animal(String name, Integer age, String breed, String color) {
        this.name = name;
        this.age = age;
        this.breed = breed;
        this.color = color;
    }

    public void printDetails() {
        System.debug('Name: ' + this.name + 'Age: ' + this.age + 'Breed: ' + this.breed + 'Color: ' + this.color);
    }

    public virtual void makeSound() {
        System.debug('The animal is making a sound!!!');
    }
}