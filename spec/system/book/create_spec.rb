require 'rails_helper'

RSpec.describe 'create book', type: :system do
  scenario 'empty title and author' do
    visit new_book_path
    click_button 'Create Book'

    # The page should show error message 'Title can't be blank'
    expect(page).to have_content("Title can't be blank")

    # No bookmark record is created
    expect(Book.count).to eq(0)
  end
end