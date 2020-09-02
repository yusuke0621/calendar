require 'rails_helper'
describe Meeting do
  describe '#create' do

    it "is invalid without a name" do
      meeting = Meeting.new(name: "" )
      meeting.valid?
    end

    it "is invalid without a start_time" do
      meeting = Meeting.new(start_time: "" )
      meeting.valid?
    end

    it "is invalid without a image" do
      meeting = Meeting.new(image: "" )
      meeting.valid?
    end
  end
end