Feature: User Signup

    In order to Sign up
    As a new user
    I want to use the website

    Scenario: guest can sign up
        Given I am a new user
        When I visit the sign up page
        And fill in the information
        Then I should be signed up
