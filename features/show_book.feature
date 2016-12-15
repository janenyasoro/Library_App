Feature: Show Book
    As the admin
    I want to a certain book's details

    Scenario: l am the admin
        Given l am the current admin
        When l visit the show book page
        Then l should see the book

