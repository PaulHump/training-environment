@3 @All
Feature: CompleteformAllHobbies

Scenario: Create new user and complete the details form
Given I have a user account
When I visit the test site
And I login using that user account
Then I complete the form with all hobbies and submit the details
And I confirm the hobbies details have been recorded correctly
And Logout
