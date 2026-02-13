class AccountsController < ApplicationController
  def new
    @account = Account.new
  end

  def create
    @account = Account.new(
      email: params[:account][:email],
      password: params[:account][:password]
    )
    @account.author = Author.find_or_create_by(
      name: params[:account][:email].split('@').first.capitalize
    )

    if @account.save
      session[:account_id] = @account.id
      redirect_to root_path, notice: "Conta criada!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def account_params
    params.require(:account).permit(:email, :password)
  end
end
