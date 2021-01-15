require 'rails_helper'

RSpec.describe 'Book' do           #
  context 'before publication' do  # (almost) plain English
    it 'cannot have comments' do   #
      book = Book.new
      expect { book.save! }.to raise_error(ActiveRecord::RecordInvalid)  # test code
    end
  end
end