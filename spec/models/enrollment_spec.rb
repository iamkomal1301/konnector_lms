require 'rails_helper'

RSpec.describe Enrollment, type: :model do
  it "is valid with valid attributes" do
    expect(build(:enrollment)).to be_valid
  end

  it "defaults status to pending" do
    enrollment = create(:enrollment)
    expect(enrollment.pending?).to be true
  end

  it "belongs to student" do
    expect(Enrollment.reflect_on_association(:student).macro).to eq(:belongs_to)
  end
end

