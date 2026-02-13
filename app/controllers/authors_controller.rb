class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  def new
    @author = Author.new
    2.times { @author.books.build }
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

  private

  def author_params
    params.require(:author).permit(
      :name,
      :bio,
      books_attributes: [:id, :name, :genero_id, :editora_id, :_destroy]
    )
  end
end
