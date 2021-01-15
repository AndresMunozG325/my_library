require 'rails_helper'

RSpec.describe BooksController do
    describe "POST index" do
      it "assigns title" do
        book = Book.create
        post :index
        expect(assigns(:books)).to eq([book])
      end
  
      it "renders the index template" do
        post :index
        expect(response).to render_template("index")
      end
    end
  end