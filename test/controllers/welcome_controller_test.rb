require "test_helper"

describe WelcomeController do
  it "should get hello" do
    get welcome_hello_url
    value(response).must_be :success?
  end

end
