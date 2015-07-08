@4 @All
Feature: NoDetailsEntered

Scenario: Create new user and complete the details form
Given I have a user account
When I visit the test site
And I login using that user account
Then I submit no details
And I confirm only the default values are present
And Logout
