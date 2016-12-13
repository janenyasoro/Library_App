Feature: User Update
    In order to Update
    As an existing user
    I want to update my saved details

    Scenario: user can update their details
        Given l am a saved user
        When l visit the update page
        And write my new details
        Then my details should be updated in the database
        
