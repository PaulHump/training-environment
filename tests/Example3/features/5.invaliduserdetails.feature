@5 @All
Feature: InvalidUserDetails

Scenario: Attempt to log in with an invalid user

Given I visit the test site
And I login using an login with an invalid user account
Then I am presented with a valid error message

