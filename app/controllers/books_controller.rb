class BooksController < ApplicationController
  

  def top
    @book = Book.new(params[:id])
  end

  def show
  @book = Book.find(params[:id])
  end

  def index
  	 @books = Book.all
     @book = Book.new
  end

  def new
  	@book = Book.new
  end

  def create
  	@book = Book.new(book_params)
 
    if @book.save
    redirect_to @book, notice: 'Book was successfully created.'
    else
    render :new
    end
  end

  def edit
  	@book = Book.find(params[:id])
  end

 def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    if @book.save
    redirect_to book_path, notice: 'Book was successfully created.'
    else
    render :new
    end

 end

 def destroy
    @book = Book.find(params[:id])
    @book.destroy
    @books = Book.all
    if @book.destroy
    redirect_to books_path, notice: 'Book was successfully created.'
    else
    render :new
    end
    



 end


  def list
    @book = Book.find(params[:id])
  end




 private
    def book_params
        params.require(:book).permit(:title, :body)
    end

end