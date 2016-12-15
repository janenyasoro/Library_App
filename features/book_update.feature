Feature: Book Update
    In order to update
    As the saved book
    I want to update the saved book

    Scenario: admin can update the books
        Given l am the existing book
        When l visit the update book page
        And write the new details
        Then the book details should be updated
        
