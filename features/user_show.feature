Feature: Show User

    Scenario: As a registered user
        I want to see my details

        Given i am a registered user
        When i visit the show page
        Then l should see my details

