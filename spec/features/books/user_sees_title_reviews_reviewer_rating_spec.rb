require 'rails_helper'

describe "user visits book show page" do
  scenario "user sees book title" do
    book = Book.create(title: 'Bookzilla')

    visit book_path(book)

    expect(page).to have_content(book.title)
  end

  scenario 'user sees book review' do
    book = Book.create(title: 'Bookzilla')

    review = book.reviews.create(body: 'This book is trash!')

    visit book_path(book)

    expect(page).to have_content(review.body)
  end

  scenario 'user sees name of reviewer' do
    skip
    book = Book.create(title: 'Bookzilla')

    visit book_path(book)

    expect(page).to have_content('Bookzilla')
  end

  scenario 'user sees book rating' do
    skip
    book = Book.create(title: 'Bookzilla')

    visit book_path(book)

    expect(page).to have_content('Bookzilla')
  end
end
