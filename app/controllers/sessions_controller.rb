class SessionsController < ApplicationController
  def new
  end

  def create
    account = Account.find_by(email: params[:email])
    if account && account.password == "123456"
      session[:account_id] = account.id
      redirect_to root_path, notice: "Login OK!"
    else
      flash.now[:alert] = "Email ou senha errados"
      render :new
    end
  end

  def destroy
    session[:account_id] = nil
    redirect_to root_path, notice: "Logout!"
  end
end
