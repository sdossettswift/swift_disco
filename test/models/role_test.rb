require "test_helper"

describe Role do
  let(:role) { Role.new }

  it "must be valid" do
    value(role).must_be :valid?
  end
end
