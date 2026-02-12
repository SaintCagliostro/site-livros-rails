  class AuthorsController < ApplicationController
    def index
      @authors = Author.all
    end

    def show
      @author = Author.find(params[:id])
      @book = @author.books.build
    end

    def create_book
      @author = Author.find(params[:author_id])
      @book = @author.books.create(book_params)

      if @book.persisted?
        redirect_to @author, notice: "Livro '#{@book.name}' adicionado!"
      else
        render :show
      end
    end

    private
    def book_params
      params.require(:book).permit(:name, :isbn, :genero_ids => [], :editora_ids => [])
    end
    def new
      @author = Author.new
    end
  end

