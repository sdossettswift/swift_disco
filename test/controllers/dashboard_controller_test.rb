require "test_helper"

describe DashboardController do
  it "should get show" do
    get dashboard_show_url
    value(response).must_be :success?
  end

end
