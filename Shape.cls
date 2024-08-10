public virtual class Shape {
    private Integer length;
    private Integer width;

    public Shape(Integer length, Integer width) {
        this.length = length;
        this.width = width;
    }

    public virtual void calculateArea() {
        System.debug('Area of the shape is: ' + this.length * this.width);
    }

    public void printDetails(List<Shape> shapeList) {
        for(Shape shape : shapeList) {
            System.debug('======Start======');
            shape.calculateArea();
            System.debug('======End======');
        }
    }
}

public class Rectangle extends Shape {
    public Rectangle(Integer length, Integer width) {
        super(length, width);
    }

    public override void calculateArea() {
        System.debug('Area of the rectangle is: ' + this.length * this.width); 
    }
}

public class Circle extends Shape {
    public Circle(Integer length, Integer width) {
        super(length, width);
    }

    public override void calculateArea() {
        System.debug('Area of the circle is: ' + 3.14 * this.length * this.width); 
    }
}