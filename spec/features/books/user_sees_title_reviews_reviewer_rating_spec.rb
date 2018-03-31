require 'rails_helper'

describe "user visits book show page" do
  scenario "user sees book title" do
    book = Book.create(title: 'Bookzilla')

    visit book_path(book)

    expect(page).to have_content(book.title)
  end

  scenario 'user sees book review' do
    book = Book.create(title: 'Bookzilla')
    user = User.create(name: 'Greg')
    review = book.reviews.create(body: 'This book is trash!', user_id: user.id, rating: 1)
    visit book_path(book)

    expect(page).to have_content(review.body)
  end

  scenario 'user sees name of reviewer' do
    skip
    book = Book.create(title: 'Bookzilla')
    user = User.create(name: 'Greg')
    review = book.reviews.create(body: 'This book is trash!', user_id: user.id, rating: 1)

    visit book_path(book)

    expect(page).to have_content(user.name)
  end

  scenario 'user sees book rating' do
    skip
    book = Book.create(title: 'Bookzilla')
    user = User.create(name: 'Greg')
    review = book.reviews.create(body: 'This book is trash!', user_id: user.id, rating: 1)

    visit book_path(book)

    expect(page).to have_content(review.rating)
  end
end
