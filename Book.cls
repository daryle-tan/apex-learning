public class Book {
    public String title;
    public String author;
    public Integer yearPublished;

    public Book(String title,
    String author) {
        this.title = title;
        this.author = author;
    }

    public Book(String title) {
        this.title = title;
    }
}