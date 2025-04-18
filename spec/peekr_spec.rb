# frozen_string_literal: true

RSpec.describe Peekr do
  it "has a version number" do
    expect(Peekr::VERSION).not_to be nil
  end

  it "responds to explore" do
    expect(Peekr::Peek).to respond_to(:explore)
  end
end
