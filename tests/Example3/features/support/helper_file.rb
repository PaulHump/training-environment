#Create a user
def create_user
  $data = {}
  $data['user_name'] = 'User' + Time.new().to_i.to_s + '@example.org' # Create a random user name
  $data['user_password'] = 'password'

  rest_post_call('http://localhost:4567/add_user', $data)
end

#Login
def login_user
  fill_in('username', :with => $data['user_name'])
  fill_in('password', :with => $data['user_password'])
  click_button('Sign in')
end

#Invalid Login 
def invalid_login_user
  fill_in('username', :with => 'InvalidUser@bt.com')
  fill_in('password', :with => 'green123')
  click_button('Sign in')
end

#Logout
def logout
  click_link ('Back to menu')
  click_link ('Logout')
  page.should have_content 'Please sign in'
end
