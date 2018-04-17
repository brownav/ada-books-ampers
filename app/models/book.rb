class Book < ApplicationRecord
  belongs_to :author

  validates :title, presence: true

  def first_published
    books = self.books.where.not(publication_year: nil)
    sorted_books = books.order(publication_year)

    first_book = sorted_books.first

    return first_book.publication_year
  end
end
