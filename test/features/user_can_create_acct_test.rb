require "test_helper"

class UserCanCreateAcctTest < Capybara::Rails::TestCase
  test "Can Sign Up" do
     visit root_path
     click_link('Create Account')
     fill_in('Email', :with => 'sarah@example.com')
     fill_in('Username', :with => 'Sarah')
     fill_in('Password', :with => '12345678')
     fill_in('Password confirmation', :with => '12345678')
     click_button('Create User')
    assert_content ("Welcome to Swift Discovery")
  end
end
