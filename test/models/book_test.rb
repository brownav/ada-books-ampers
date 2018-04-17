require 'test_helper'

describe Book do
  let(:book) { Book.new title: "book", author_id: (Author.create name: "Alex B").id }

  it "must be valid" do
    book.author = Author.create name: "Alex B"
    value(book).must_be :valid?
  end

  it "must have a title" do
    book.author = Author.create name: "Alex B"

    book.title = nil

    book.valid?.must_equal false
    book.errors.must_include :title
  end

  it "must raise error for invalid title length" do
    book.author = Author.create name: "Alex B"

    book.title = ""

    book.valid?.must_equal false
    book.errors.must_include :title
  end

  it "must raise error for invalid title length" do
    book.author = Author.create name: "Alex B"

    book.title = "ssssssslkjlkjlkjlkjdlfkjsldkjfldjfljsdflkjsdlkfjsldkjflskdjflskjfdlskdjflksjdflksjdlfkjsldfjlskdjflkejlkjflskjflksjle"

    book.valid?.must_equal false
    book.errors.must_include :title
  end

  describe 'relations' do
    it "has an author" do
      book = books(:poodr)
      book.author.must_equal authors(:metz)

      # test_metz = author(:metz)
    end
    it "can set the author" do
      book = Book.new(title: "test book")
      book.author = authors(:metz)
      book.author_id.must_equal authors(:metz)
    end

    end
  end


end
