require "test_helper"

describe UsersController do
  it "should get new" do
    get users_new_url
    value(response).must_be :success?
  end

end
