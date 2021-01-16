require 'rails_helper'

RSpec.describe BooksController do
    describe "GET new" do
      it "render index template" do
        get :new
        expect(response).to render_template("new")
      end
    end
  end