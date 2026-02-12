class EditorasController < ApplicationController
  def index
    @editoras = Editora.all
  end

  def show
    @editora = Editora.find(params[:id])
  end
end

def show
  end

