require "test_helper"

describe Matter do
  let(:matter) { Matter.new }

  it "must be valid" do
    value(matter).must_be :valid?
  end
end
