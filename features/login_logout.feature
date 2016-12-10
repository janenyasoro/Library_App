Feature: User Login and Logout

    In order to Login
    As an existing user
    I want to login in and view the books

    Scenario: user can login
        Given I am an existing user
        When I visit the log in page
        And fill in my details
        Then I should be logged in
    Scenario: User can log out
         Given am a logged in user
         Then user can log out
