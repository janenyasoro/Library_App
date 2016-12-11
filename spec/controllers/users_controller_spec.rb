require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  it "assigns user" do
    get:new 
    expect(assigns(:user)).to be_a_new(User)
  end
  it "should create a user" do
    # expect(flash[:notice]).to have_content("Sign Up Successful")
    # expect(response).to redirect_to(users_url)
  end
  context "POST#CREATE" do
    before(:each) do
      post :create, params:{user: {name: "jane", email: "jane@gmail.com", password: "123456", password_confirmation: "123456"}} 
    end
    it "saves user to the database" do
      pending
      before_count = User.count
      expect(User.count).not_to eq(before_count)
    end
    it "displays the correct flash" do
      expect(flash[:notice]).to have_content("Sign Up Successful")
    end
    it "redirects to the users index" do
       expect(response).to redirect_to(users_url)
    end
  end
  context "GET#EDIT" do
    it "returns a form for editing" do
      user = FactoryGirl.create(:user)
      get :edit, params: {id:user}
      expect(response).to have_http_status(:success)
      expect(response).to render_template(:edit)
    end
    it "updates the last element details in the database" do
      user = FactoryGirl.create(:user)
      get :edit, params: {id: user}
      put :update, params: {user: { email: "akinyi@gmail.com"}}
      expect(User.where(email: "akinyi@gmail.com")).to be_present
    end
    it "returns an html form for displaying results" do
      get :show
      expect(response).to have_http_status(:success)
      expect(response).to render_template(:show)
    end
 end
end
