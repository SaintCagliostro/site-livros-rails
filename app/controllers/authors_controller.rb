class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      redirect_to @author, notice: "Autor criado com sucesso!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @author = Author.find(params[:id])
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
  def author_params
    params.require(:author).permit(:name, :bio)
  end

  def book_params
    params.require(:book).permit(:name, :isbn, :genero_ids => [], :editora_ids => [])
  end
end
