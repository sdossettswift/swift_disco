require "test_helper"

describe DocumentsController do
  it "should get new" do
    get documents_new_url
    value(response).must_be :success?
  end

  it "should get edit" do
    get documents_edit_url
    value(response).must_be :success?
  end

end
