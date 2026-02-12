class AccountsController < ApplicationController
  def new
    @account = Account.new
  end

  def create
    @account = Account.new(account_params)
    @account.author = Author.find_or_create_by(name: @account.email.split('@').first.capitalize)

    if @account.save
      session[:account_id] = @account.id  # ← LOGA AUTOMATICAMENTE
      redirect_to root_path, notice: "Conta criada e login realizado!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def account_params
    params.require(:account).permit(:email, :password)
  end
end
