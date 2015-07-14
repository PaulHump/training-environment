
Given(/^I have a user account$/) do
  create_user
end

When(/^I visit the test site$/) do
  visit('http://localhost:4567') #Url for Test App
end

When(/^I login using that user account$/) do
  login_user
end

Then(/^I complete the form and submit the details$/) do
  click_link ('Details form')
  fill_in('forename', :with => 'Paul')
  fill_in('surname', :with => 'Humphries')
  fill_in('house_number', :with => '57')
  fill_in('street', :with => 'The Grange')
  fill_in('city', :with => 'Plymouth')
  fill_in('postcode', :with => 'PL1 1AA')
  check ('cycling')
  click_button ('Submit')
end

Then(/^I confirm the details have been recorded correctly$/) do
  expect(page).to have_content('My name is Paul Humphries')
  expect(page).to have_content(57)
  expect(page).to have_content('The Grange')
  expect(page).to have_content('Plymouth')
  expect(page).to have_content('PL1 1AA')
  expect(page).to have_content('cycling')
  expect(page).to have_content('volvo')
  expect(page).to have_content('male')
end

Then(/^I complete the form as a female and submit the details$/) do
  click_link ('Details form')
  select('Saab', :from => 'cars')
  first(:xpath, 'html/body/div[1]/form/input[8]').click #Selects 'Female' radio button as named the same
  click_button ('Submit')
end

Then(/^I confirm the female details have been recorded correctly$/) do
  expect(page).to have_content('female')
  expect(page).to have_content('saab')
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
  expect(page).to have_content('walking')
  expect(page).to have_content('cycling')
  expect(page).to have_content('swimming')
  expect(page).to have_content('fiat')
end

Then(/^I submit no details$/) do
  click_link ('Details form')
  select('Audi', :from => 'cars')
  click_button ('Submit')
end

Then(/^I confirm only the default values are present$/) do
  expect(page).to have_content('audi')
  expect(page).to have_content('male')
end

Then(/^Logout$/) do
  logout
end
