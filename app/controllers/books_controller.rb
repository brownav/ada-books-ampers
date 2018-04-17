class BooksController < ApplicationController

  before_action :find_book, only: [:show, :edit, :update, :destroy]
  before_action :find_user

  def index
    # @user = User.find_by(id: session[:user_id])
    # if params[:author_id]
    # @author = Author.find_by(:id params[:author_id])
    #   @books = author.books
    # else
    @books = Book.all
  end


  def show
    # id = params[:id]
    # @book = Book.find(id)
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:success] = "Book created"
      redirect_to books_path
    else
      flash.now[:alert] = @book.errors
      render :new
    end

    # @book.title = params[:book][:title]
    # @book.author = params[:book][:author]
    # @book.description = params[:book][:description]
  end

  def edit
    # @book = Book.find_by(id: params[:id])
  end

  def update
    # @book = Book.find_by(id: params[:id])
    if @book.update(book_params)
      flash[:success] = "#{book.name} updated"
      redirect_to book_path(@book.id)
    else
      render :edit
    end
    # @book.title = params[:book][:title]
    # @book.author = params[:book][:author]
    # @book.description = params[:book][:description]

    # if @book.update(title: params[:book][:title], author: params[:book][:author], description: params[:book][:description])
  end

  def destroy
    if @book
      @book.destroy
      flash[:success] = "#{book.name} deleted"
    else
      flash.now[:alert] = {book: "does not exist"}
    end
    redirect_to books_path
  end

  private

  def book_params
    return params.require(:book).permit(:author_id, :title, :description)
  end

  def find_book
    @book = Book.find_by(id: params[:id])
  end

end
