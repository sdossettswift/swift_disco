require "test_helper"

describe SessionsController do
  it "should get new" do
    get sessions_new_url
    value(response).must_be :success?
  end

end
