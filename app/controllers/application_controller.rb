class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :authorize # ビフォアフィルター
    
  # 簡易ユーザー認証
  def authorize
    if session[:login] = false
      redirect_to signin_path
    end
  end
end
