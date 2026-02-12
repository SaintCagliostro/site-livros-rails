class BooksController < ApplicationController
    def index
    @books = case params[:sort]
             when 'recent' then Book.order(created_at: :desc)
             when 'oldest' then Book.order(created_at: :asc)
             when 'alpha'  then Book.order(name: :asc)
             else Book.all
             end


    end



  def new
    @book = Book.new
    @generos = Genero.all
    @editoras = Editora.all
    @authors = Author.all
    @author = Author.new
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to @book, notice: 'Livro criado com sucesso.'
    else
      @generos = Genero.all
      @editoras = Editora.all
      @authors = Author.all
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @book = Book.find(params[:id])
    @author = @book.author
    @suggested_books = Book.where(author: @author).where.not(id: @book.id).limit(5)
  end

  private

  def book_params
    params.require(:book).permit(:name, :author_id, :editora_id, :genero_id)
  end
end
