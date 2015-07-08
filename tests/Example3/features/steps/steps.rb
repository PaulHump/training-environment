
Given(/^I have a user account$/) do
  $data = {}
  $data['user_name'] = 'User' + Time.new().to_i.to_s + '@example.org' # Create a random user name
  $data['user_password'] = 'password'

  rest_post_call('http://localhost:4567/add_user', $data)
end

When(/^I visit the test site$/) do
  visit('http://localhost:4567')
end

When(/^I login using that user account$/) do
  fill_in('username', :with => $data['user_name'])
  fill_in('password', :with => $data['user_password'])
  click_button('Sign in')
end

Then(/^I complete the form and submit the details$/) do
  #pending # Write code here that turns the phrase above into concrete actions
  click_link ('Details form')
  fill_in('forename', :with => 'Paul')
  fill_in('surname', :with => 'Humphries')
  fill_in('house_number', :with => '57')
  fill_in('street', :with => 'The Grange')
  fill_in('city', :with => 'Plymouth')
  fill_in('postcode', :with => 'PL1 1AA')
  check ('cycling')
  click_button ('Submit')
  #sleep 10
end

Then(/^I confirm the details have been recorded correctly$/) do
  #pending # Write code here that turns the phrase above into concrete actions
  page.should have_content 'My name is Paul Humphries'
  page.should have_content 57
  page.should have_content 'The Grange'
  page.should have_content 'Plymouth'
  page.should have_content 'PL1 1AA'
  page.should have_content 'cycling'
  page.should have_content 'volvo'
  page.should have_content 'male'
  #page.text.should match('My name is Paul Humphries')
end

Then(/^I complete the form as a female and submit the details$/) do
  click_link ('Details form')
  select('Saab', :from => 'cars')
  first(:xpath, 'html/body/div[1]/form/input[8]').click
  click_button ('Submit')
end

Then(/^I confirm the female details have been recorded correctly$/) do
  page.should have_content 'female'
  page.should have_content 'saab'
end

Then(/^I complete the form with all hobbies and submit the details$/) do
  click_link ('Details form')
  check ('cycling')
  check ('walking')
  check ('swimming')
  select('Fiat', :from => 'cars')
  click_button ('Submit')
end

Then(/^I confirm the hobbies details have been recorded correctly$/) do
  page.should have_content 'walking'
  page.should have_content 'cycling'
  page.should have_content 'swimming'
  page.should have_content 'fiat'
end

Then(/^I submit no details$/) do
  click_link ('Details form')
  select('Audi', :from => 'cars')
  click_button ('Submit')
end

Then(/^I confirm only the default values are present$/) do
  page.should have_content 'audi'
  page.should have_content 'male'
end
