class BooksController < ApplicationController
  def index
    # TODO: show books with 4 and 5 stars as selection of most loved
    @books = Book.order("RANDOM()")
    @books = @books[0, 60]
    # could also order by title, :title, can also just say e.g. Book.order(:title)
  end

  def search
    # TODO: search by author as well as by title
  end

  def result
    # TODO: show additional two titles, then a 'show me more titles' button to get next three
    
    book_title = params[:book_title]

    # below: check if book title searched is already in database of books.
    # TODO: if list of titles in database is more than 1, show all. else, go to that one.
    database_titles = Book.where("lower(books.title) = ?", book_title.downcase)
    if database_titles.length > 0
      redirect_to book_path(database_titles[0].id)
    else
      search_url = "https://www.goodreads.com/search.xml?key=RBr5ZI7tQPC7cDN9K2oa3A&q=#{book_title}"
      gr_data = HTTParty.get search_url
      gr_data = gr_data.parsed_response['GoodreadsResponse']['search']
      if gr_data["total_results"] == "0"
        flash[:notice] = "No results, sorry. Try another title."
        redirect_to (books_search_path)
      elsif gr_data["total_results"] == "1"
        @title = gr_data['results']['work']['best_book']['title']
        @author = gr_data['results']['work']['best_book']['author']['name']
        @book_cover = gr_data['results']['work']['best_book']['image_url']
        @gr_book_id = gr_data['results']['work']['best_book']['id']
      else
        @title = gr_data['results']['work'][0]['best_book']['title']
        @author = gr_data['results']['work'][0]['best_book']['author']['name']
        @book_cover = gr_data['results']['work'][0]['best_book']['image_url']
        @gr_book_id = gr_data['results']['work'][0]['best_book']['id']
      end
      @gr_data = gr_data

      book_id_url = "https://www.goodreads.com/book/show.xml?key=RBr5ZI7tQPC7cDN9K2oa3A&id=#{@gr_book_id}"
      gr_data2 = HTTParty.get book_id_url
      gr_data2 = gr_data2.parsed_response['GoodreadsResponse']['book']
      language = gr_data2["language_code"]
      if language === 'eng'
        @description = gr_data2["description"]
      else 
        @description = nil
      end
      @gr_link = gr_data2["link"]

      # add the top hit new book to the database (if it's not already in there)
      matching_titles = Book.where("lower(books.title) = ?", @title.downcase)
      if matching_titles.length > 0
        @book = matching_titles[0]
      else
        unless @book_cover.include? "nophoto"
          @book = Book.create(:title => @title, :author => @author, :image => @book_cover, :link => @gr_link, :description => @description)
        else
          @book = Book.create(:title => @title, :author => @author, :link => @gr_link, :description => @description)
        end
      end
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
    params.require(:book).permit(:title, :author, :image, :link, :description)
  end

end
