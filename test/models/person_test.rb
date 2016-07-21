require "test_helper"

describe Person do
  let(:person) { Person.new }

  it "must be valid" do
    value(person).must_be :valid?
  end
end
