require "rails_helper"

RSpec.describe Image, type: :model do
  describe "validations" do
    it { should validate_presence_of(:body) }
    it { should validate_presence_of(:title) }
  end

  describe "associations" do
    it { should belong_to(:user) }
    it { should have_many(:comments) }
  end
end
