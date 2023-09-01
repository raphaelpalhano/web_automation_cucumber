Feature: Login Parabank

    Login in ParaBank with valid user and invalid


    Scenario: Login using valid data
    Given I fill login form
    When I submit login
    Then I have a title "Accounts Overview"

