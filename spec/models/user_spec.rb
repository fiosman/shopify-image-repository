require "rails_helper"

RSpec.describe User, type: :model do
  let!(:user) { User.create(username: "fares", password: "123ok13o23") }
  describe "validations" do
    it { should validate_presence_of(:username) }
    it { should validate_uniqueness_of(:username).case_insensitive }
    it { should validate_presence_of(:password) }
    it { should validate_length_of(:password).is_at_least(6) }
  end

  describe "associations" do
    it { should have_many(:images) }
    it { should have_many(:comments) }
  end
end
