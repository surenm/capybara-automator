Feature: Send messages to people in Facebook
  I want to send messages automatically to people in Facbeook

  Scenario: Log into facebook
    Given I am on the home page
    And I have entered "email" into the "email" field
    And I have entered "password" into the "pass" field
    And Clicked "Log In"
    Then I should see "Surendran"

    Given I visit "/messages/mariram"
    And I send a message "this is another test 123"