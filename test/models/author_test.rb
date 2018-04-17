require 'test_helper'

describe Author do
  let(:author) { Author.new }
  let(:book_a) { Book.new publication_year: "2000"}

  describe "first_published" do

    it "should return the year of the earliest published book for the author" do

      author.books << book_a

      author.first_published.must_equal 2000
    end

  end


end
