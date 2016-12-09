require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  it "assigns user" do
    get:new 
    expect(assigns(:user)).to be_a_new(User)
  end
  it "should create a user" do
    before_count= User.count
    post:create, params: { user: {name: "jane", email: "jane@gmail.com", password: "123456", password_confirmation: "123456"} }
    expect(User.count).not_to eq(before_count)
    expect(flash[:notice]).to have_content("Sign Up Successful")
    expect(response).to redirect_to(users_url)
  end
end
