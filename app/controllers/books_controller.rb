class BooksController < ApplicationController
  def index
    @generos = Genero.all
    @editoras = Editora.all
    @authors = Author.all
    @books = Book.all
  end
end
