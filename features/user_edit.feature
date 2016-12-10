Feature: User Edit

    In order to Edit 
    As a new user
    I want to edit my saved details 

    Scenario: user can edit their details
        Given I am a saved user
        When I visit the edit page
        And edit the information
        Then my details should be updated
