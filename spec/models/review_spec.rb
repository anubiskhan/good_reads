require 'rails_helper'

describe Review do
  describe 'validations' do
    context 'validates book attributes' do
      it {should validate_presence_of(:body)}
    end
  end

  describe 'relationships' do
    it 'belongs to a user' do
      user = User.new(name: 'Greg')
      review = user.comments.new(body: 'This book was trash!')
      
      expect(review).to respond_to(:user)
    end
  end

  describe 'relationships' do
    it 'belongs to a book' do
      book = Book.new(name: 'Bookzilla')
      review = user.comments.new(body: 'This book was trash!')

      expect(review).to respond_to(:book)
    end
  end
end
