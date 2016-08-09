require "test_helper"

class UserCanCreateAcctTest < Capybara::Rails::TestCase

  test "Can Sign Up" do
     visit new_user_path
     fill_in('Email', :with => 'sarah@example.com')
     fill_in('Username', :with => 'Sarah')
     fill_in('Password', :with => '12345678')
     fill_in('Full name', :with => 'Sarah Swift')
     fill_in('Password confirmation', :with => '12345678')
     click_button('Create User')
    assert_content ("Welcome!")
  end
end
