class GenerosController < ApplicationController
  before_action :set_genero, only: %i[show edit update destroy]

  def index
    @generos = Genero.all
  end

  def show
    @books = @genero.books
  end

  def new
    @genero = Genero.new
  end

  def edit
  end

  def create
    @genero = Genero.new(genero_params)

    respond_to do |format|
      if @genero.save
        format.html { redirect_to @genero, notice: "Genero criado com sucesso!." }
        format.json { render :show, status: :created, location: @genero }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @genero.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @genero.update(genero_params)
        format.html { redirect_to @genero, notice: "Genero atualizado.", status: :see_other }
        format.json { render :show, status: :ok, location: @genero }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @genero.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @genero.destroy!

    respond_to do |format|
      format.html { redirect_to generos_path, notice: "Genero apagado.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
  def set_genero
    @genero = Genero.find(params[:id])
  end

  def genero_params
    params.require(:genero).permit(:name)
  end
end
