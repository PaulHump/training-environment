Land Registry Sandpit Training

Example 1
  -   Feature: Create User on test site

  Scenario: Create new user that doesn't exist
  When I create a user
  Then the user is successfully created

  Scenario: Create new user that already exists
  When I create a user which already exists
  Then the user is not created

Example 2
  -   Feature: Create User and login to test site

  Scenario: Create new user and login to site
  Given I have a user account
  When I visit the test site
  And I login using that user account
  Then I am successfully logged in

  Scenario: Login using an incorrect username
  When I visit the test site
  And I login with a test account that doesn't exist
  Then I receive a login error

Example 3
  -   Feature: Completeform

  Scenario: Create new user and complete the details form
  Given I have a user account
  When I visit the test site
  And I login using that user account
  Then I complete the form and submit the details
  And I confirm the details have been recorded correctly
  And Logout

  -   Feature: CompleteformFemale

  Scenario: Create new user and complete the details form
  Given I have a user account
  When I visit the test site
  And I login using that user account
  Then I complete the form as a female and submit the details
  And I confirm the female details have been recorded correctly
  And Logout

  -   Feature: CompleteformAllHobbies

  Scenario: Create new user and complete the details form
  Given I have a user account
  When I visit the test site
  And I login using that user account
  Then I complete the form with all hobbies and submit the details
  And I confirm the hobbies details have been recorded correctly
  And Logout

  -   Feature: NoDetailsEntered

  Scenario: Create new user and complete the details form
  Given I have a user account
  When I visit the test site
  And I login using that user account
  Then I submit no details
  And I confirm only the default values are present
  And Logout

Example 4
  -   Feature: Interrogate Data

  Scenario: Basic Json Navigation

  Given I have entered a Title Number
  When the object is returned
  Then I can confirm the data

Example 5
  -   Feature: Interrogate Data

  Scenario: Basic Json Navigation

  Given I have entered a Title Number
  When the object is returned
  Then I can confirm the data
