require "test_helper"

class UserCanSignInTest < Capybara::Rails::TestCase
  setup do
   User.create! email: "example@example.com", username: "example", password: "example"
 end

  test "Can Sign In" do
     visit sign_in_path
     fill_in('Username', :with => 'example')
     fill_in('Password', :with => 'example')
     click_button('Sign In!')
    assert_content ("Signed in!")
  end
end
