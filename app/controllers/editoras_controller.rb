class EditorasController < ApplicationController
  def new
    @editora = Editora.new
  end

  def create
    @editora = Editora.new(editora_params)
    if @editora.save
      redirect_to @editora, notice: 'Editora criada com sucesso.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @editora = Editora.find(params[:id])
  end

  private

  def editora_params
    params.require(:editora).permit(:name, :descricao)
  end
end
