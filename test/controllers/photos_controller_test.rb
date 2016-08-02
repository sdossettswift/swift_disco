require "test_helper"

describe PhotosController do
  it "should get index" do
    get photos_index_url
    value(response).must_be :success?
  end

  it "should get show" do
    get photos_show_url
    value(response).must_be :success?
  end

  it "should get new" do
    get photos_new_url
    value(response).must_be :success?
  end

  it "should get create" do
    get photos_create_url
    value(response).must_be :success?
  end

  it "should get edit" do
    get photos_edit_url
    value(response).must_be :success?
  end

  it "should get update" do
    get photos_update_url
    value(response).must_be :success?
  end

end
