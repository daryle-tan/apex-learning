public with sharing class Library {
    public List<Book> lstBooks;

    public Library() {
        lstBooks = new List<Book>();
    }

    public static void addBook(Book bookObj) {
        lstBooks.add(bookObj);
    }
}