class BooksController < ApplicationController
  def index
    @books = Book.all.order(:title)
    # could also order by title, :title, can also just say e.g. Book.order(:title)
  end

  def search
  end

  def result
    book_title = params[:book_title]
    # below: check if book title searched is already in database of books.
    list = Book.where('books.title' => book_title)
    search_url = "https://www.goodreads.com/search.xml?key=RBr5ZI7tQPC7cDN9K2oa3A&q=#{book_title}"
    gr_data = HTTParty.get search_url
    gr_data = gr_data.parsed_response['GoodreadsResponse']['search']
    # raise :hell
    if gr_data["total_results"] == "0"
      flash[:notice] = "No results, sorry. Try another title."
      redirect_to (books_search_path)
    elsif gr_data["total_results"] == "1"
      @title = gr_data['results']['work']['best_book']['title']
      @author = gr_data['results']['work']['best_book']['author']['name']
      @book_cover = gr_data['results']['work']['best_book']['image_url']
    else
      @title = gr_data['results']['work'][0]['best_book']['title']
      @author = gr_data['results']['work'][0]['best_book']['author']['name']
      @book_cover = gr_data['results']['work'][0]['best_book']['image_url']
    end

    if list.length > 0
      redirect_to book_path(list[0].id)
    else
    @book = Book.create(:title => @title, :author => @author, :image => @book_cover)
    end
  end

  def show
    @book = Book.find params[:id]
  end

  def new
    @book = Book.new
  end

  def create
    book = Book.create book_params
    redirect_to book
  end

  def edit
    @book = Book.find params[:id]
  end

  def update
    book = Book.find params[:id]
    book.update book_params
    redirect_to book
  end

  def destroy
    book = Book.find params[:id]
    book.destroy
    redirect_to books_path
  end

  private
  def book_params
    params.require(:book).permit(:title, :author, :image, :link)
  end

end
