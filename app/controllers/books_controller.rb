class BooksController < ApplicationController
  def index
    @generos = Genero.all
    @editoras = Editora.all
    @authors = Author.all
    @books = Book.all
  end

  def new
    @book = Book.new
    @generos = Genero.all
    @editoras = Editora.all
    @authors = Author.all
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

  private

  def book_params
    params.require(:book).permit(
      :name,
      :author_id,
      :editora_id,
      genero_ids: []
    )
  end
end
