require "test_helper"

describe Photo do
  let(:photo) { Photo.new }

  it "must be valid" do
    value(photo).must_be :valid?
  end
end
