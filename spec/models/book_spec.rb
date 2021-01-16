require 'rails_helper'

RSpec.describe Book, :type => :model do
    it 'is valid with attributes' do
        book = Book.new(title: nil, author: nil, status: nil)
        expect(book).to_not be_valid
    end
end