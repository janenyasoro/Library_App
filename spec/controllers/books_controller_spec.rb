require 'rails_helper'

RSpec.describe BooksController, type: :controller do
  it "assigns a book" do
    get :new
    expect(assigns(:book)).to be_a_new(Book)
  end
  context "POST#CREATE" do
    before(:each) do
      post :create, params:{book: {title: "Witches of Eastend", isbn: "504", quantity: "1"}}
    end
    it "saves the book to the database" do
      pending
      before_count =Book.count
      expect(Book.count).not_to eq(before_count)
    end
    it "displays the correct flash" do
      expect(flash[:notice]).to have_content("Book successfully added")
    end
    it "redirects to the books index" do
      expect(response).to redirect_to(books_url)
    end
  end
  context "GET#EDIT" do
    it "returns a form for editing" do
      book = FactoryGirl.create(:book)
      get :edit, params: {id: book}
      expect(response).to have_http_status(:success)
      expect(response).to render_template(:edit)
    end
    it "updates the last book details" do
      book = FactoryGirl.create(:book)
      get :edit, params: {id: book}
      put :update, params: {book: {title: "Star of the sea"}}
      expect(Book.where(title: "Star of the sea")).to be_present
    end
    it "returns an html form for displaying results" do
      get :show
      expect(response).to have_http_status(:success)
      expect(response).to render_template(:show)
    end
  end
end
