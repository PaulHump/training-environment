@1 @All
Feature: Completeform

Scenario: Create new user and complete the details form
Given I have a user account
When I visit the test site
And I login using that user account
Then I complete the form and submit the details
And I confirm the details have been recorded correctly
And Logout
