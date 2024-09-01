public class Book {
    private String title;
    private String author;
    private Integer yearPublished;

    public Book(String title,
    String author) {
        this.title = title;
        this.author = author;
    }

    public Book(String title) {
        this.title = title;
    }
}