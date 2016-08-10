require "test_helper"

describe Admin::DashboardController do
  it "should get show" do
    get admin_dashboard_show_url
    value(response).must_be :success?
  end

end
