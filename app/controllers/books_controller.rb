class BooksController < ApplicationController

  BOOKS_LIST = [
    {id: 1, title: "1984", author: "George Orwell", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."},
    {id: 2, title: "Pride & Prejudice", author: "Jane Austen", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."},
    {id: 3, title: "Harry Potter", author: "J.K. Rowling", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."},
    {id: 4, title: "Harry Poodr", author: "Sandy Metz", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."}
  ]

  def index
    @books = BOOKS_LIST
  end

  def show
    id = params[:id]
    @book = BOOKS_LIST.find do |book|
      book[:id] == id.to_i
    end
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
