require 'rails_helper'

RSpec.describe User, type: :model do
  it "should not have a long name" do
  	user = User.new
  	user.name = "a" * 52
  	expect(user).not_to be_valid
  end
  it "should have a unique email" do
  	user = User.new
  	user.email = "jane@gmail.com"
  	user.save
  	duplicate_user = user.dup
  	expect(duplicate_user).not_to be_valid
  end
end
