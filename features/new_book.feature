Feature: New Book

    In order to add a new book
    As a new entry
    I want to get its details

    Scenario: book can be added
        Given l am the admin
        When l visit the book page
        And fill in the book details
        Then the new book should be added

