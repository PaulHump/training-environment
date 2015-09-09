browser = Watir::Browser.new :firefox


Given(/^I visit the test site$/) do
  browser.goto 'http://localhost:4567'
end

When(/^I login using a user account$/) do
  browser.text_field(:id => 'username').set('User1441802645@example.org')
  browser.text_field(:id => 'password').set('password')
  browser.button(:type => 'submit').click
end

Then(/^I complete the form and submit the details$/) do
  browser.link(:text => 'Details form').when_present.click
  browser.radio(:value => 'female').set
  browser.text_field(:name => 'forename').set('Paul')
  browser.text_field(:name => 'surname').set('Humphries')
  browser.text_field(:name => 'house_number').set('57')
  browser.text_field(:name => 'street').set('The Grange')
  browser.text_field(:name => 'city').set('Plymouth')
  browser.text_field(:name => 'postcode').set('PL1 1AA')
  browser.checkbox(:id => "walking").set
  browser.button(:type => 'submit').click
end

Then(/^I confirm the details have been recorded correctly$/) do
  if browser.text.include? 'My name is Paul Humphries'
    puts "PASSED"
  else
    puts "NAME TEXT NOT FOUND"
  end
  if browser.text.include? '57'
    puts "PASSED"
  else
    puts "HOUSE NUMBER NOT FOUND"
  end
  if browser.text.include? 'The Grange'
    puts "PASSED"
  else
    puts "STREET TEXT NOT FOUND"
  end
  if browser.text.include? 'Plymouth'
    puts "PASSED"
  else
    puts "CITY TEXT NOT FOUND"
  end
  if browser.text.include? 'PL1 1AA'
    puts "PASSED"
  else
    puts "POSTCODE NOT FOUND"
  end
  if browser.text.include? 'female'
    puts "PASSED"
  else
    puts "GENDER TEXT NOT FOUND"
  end
  if browser.text.include? 'walking'
    puts "PASSED"
  else
    puts "HOBBY TEXT NOT FOUND"
  end
  if browser.text.include? 'ford'
    puts "PASSED"
  else
    puts "CAR TEXT NOT FOUND"
  end
  #expect (browser.text).to include 'Dave Jones'
  #puts browser.text.include? 'My name is Paul Humphries'
  #puts browser.text.include? '57'
  #puts browser.text.include? 'The Grange'
  #puts browser.text.include? 'Plymouth'
  #puts browser.text.include? 'PL1 1AA'
  #puts browser.text.include? 'female'
  #puts browser.text.include? 'walking'
  #puts browser.text.include? 'volvo'
end

Then(/^Logout$/) do
  browser.link(:text => 'Back to menu').when_present.click
  browser.link(:text => 'Logout').when_present.click
  if browser.text.include? 'Please sign in'
    puts "PASSED"
  else
    puts "BROWSER TEXT NOT FOUND"
  end
  #puts browser.text.include? 'Please sign in'
  browser.close
end
