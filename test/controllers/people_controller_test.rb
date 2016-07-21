require "test_helper"

describe PeopleController do
  it "should get new" do
    get people_new_url
    value(response).must_be :success?
  end

end
