require "test_helper"

describe Admin::UsersController do
  it "should get new" do
    get admin_users_new_url
    value(response).must_be :success?
  end

  it "should get edit" do
    get admin_users_edit_url
    value(response).must_be :success?
  end

end
