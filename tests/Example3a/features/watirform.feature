@1 @All
Feature: Completeform

Scenario: Complete the details form using the watir_webdriver
Given I visit the test site
And I login using a user account
Then I complete the form and submit the details
And I confirm the details have been recorded correctly
And Logout
