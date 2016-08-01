require "test_helper"

describe Admin::CaseController do
  it "should get new" do
    get admin_case_new_url
    value(response).must_be :success?
  end

  it "should get create" do
    get admin_case_create_url
    value(response).must_be :success?
  end

  it "should get update" do
    get admin_case_update_url
    value(response).must_be :success?
  end

  it "should get show" do
    get admin_case_show_url
    value(response).must_be :success?
  end

end
