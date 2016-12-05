Feature: Add A Document to the Repository

    In order to add a document
    As a new user
    I want to use the website

    Scenario: guest can sign up
        Given I am a current user
        When I visit the document page
        Then I should add a document with the documents details
