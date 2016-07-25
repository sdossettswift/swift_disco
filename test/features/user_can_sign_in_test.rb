require "test_helper"

class UserCanSignInTest < Capybara::Rails::TestCase
  setup do
   User.create! email: "example@example.com", username: "example", password: "example"
 end

  test "Can Sign In" do
     visit root_path
     click_link('sign in')
     fill_in('Username', :with => 'example')
     fill_in('Password', :with => 'example')
     click_button('Sign In')
    assert_content ("Welcome to Swift Discovery")
  end
end
