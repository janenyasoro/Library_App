Feature: Book Edit

    In order to Edit
    As a new book
    I want to edit my saved details

    Scenario: admin can edit the book details
        Given l am the current administrator
        When l visit the edit_book page
        And edit the book details
        Then the book should be updated

