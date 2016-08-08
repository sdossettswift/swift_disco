require "test_helper"

describe UserMatter do
  let(:user_matter) { UserMatter.new }

  it "must be valid" do
    value(user_matter).must_be :valid?
  end
end
