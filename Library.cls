public class Library {
    public static void List<Book> lstBooks = new List<Book>();

    public static void addBook(String title, String author, Integer yearPublished) {
        Book b = new Book(title, author, yearPublished);

        lstBooks.add(b);
    }
}