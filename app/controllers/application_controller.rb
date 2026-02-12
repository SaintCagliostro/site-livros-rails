class ApplicationController < ActionController::Base
  helper_method :current_account, :logged_in?

  private
  def current_account
    @current_account ||= Account.find(session[:account_id]) if session[:account_id]
  end

  def logged_in?
    current_account.present?
  end
end
