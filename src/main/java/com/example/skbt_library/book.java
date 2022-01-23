package com.example.skbt_library;

public class book {

    private int bookID;
    private String bookTitle;
    private int bookPubYear;
    private String bookAuthor;
    private int bookAmount;
    private String bookAvailability;
    private String bookStatus;
    private String bookPublisher;

    public book(int bookID, String bookTitle, int bookPubYear, String bookAuthor, int bookAmount, String bookAvailability, String bookStatus, String bookPublisher) {
        this.bookID = bookID;
        this.bookTitle = bookTitle;
        this.bookPubYear = bookPubYear;
        this.bookAuthor = bookAuthor;
        this.bookAmount = bookAmount;
        this.bookAvailability = bookAvailability;
        this.bookStatus = bookStatus;
        this.bookPublisher = bookPublisher;
    }

    public int getBookID() {
        return bookID;
    }

    public void setBookID(int bookID) {
        this.bookID = bookID;
    }

    public String getBookTitle() {
        return bookTitle;
    }

    public void setBookTitle(String bookTitle) {
        this.bookTitle = bookTitle;
    }

    public int getBookPubYear() {
        return bookPubYear;
    }

    public void setBookPubYear(int bookPubYear) {
        this.bookPubYear = bookPubYear;
    }

    public String getBookAuthor() {
        return bookAuthor;
    }

    public void setBookAuthor(String bookAuthor) {
        this.bookAuthor = bookAuthor;
    }

    public int getBookAmount() {
        return bookAmount;
    }

    public void setBookAmount(int bookAmount) {
        this.bookAmount = bookAmount;
    }

    public String getBookAvailability() {
        return bookAvailability;
    }

    public void setBookAvailability(String bookAvailability) {
        this.bookAvailability = bookAvailability;
    }

    public String getBookStatus() {
        return bookStatus;
    }

    public void setBookStatus(String bookStatus) {
        this.bookStatus = bookStatus;
    }

    public String getBookPublisher() {
        return bookPublisher;
    }

    public void setBookPublisher(String bookPublisher) {
        this.bookPublisher = bookPublisher;
    }
}

