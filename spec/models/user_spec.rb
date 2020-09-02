require 'rails_helper'
describe User do
  describe '#create' do
    it "is invalid without a nickname" do
      user = User.new(nickname: "", )
      user.valid?
    end

    it "is invalid without an email" do
      user = User.new(email: "kkk@gmail.com")
      user.valid?
    end

    it "is invalid without a password_confirmation although with a password" do
      user = User.new( password: "00000000", password_confirmation: "00000000")
      user.valid?
    end
  end
end