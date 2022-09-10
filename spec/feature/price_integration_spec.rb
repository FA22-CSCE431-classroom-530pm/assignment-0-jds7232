# location: spec/feature/price_integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'Harry Potter'
    fill_in 'Author', with: 'J.K. Rowling'
    fill_in 'Price', with: 9.99
    fill_in 'Pdate', with: Date.new(1995,6,9)
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content(9.99)
  end
end
