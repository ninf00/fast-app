# ユーザーセッション管理用のコントローラー
class SessionsController < ApplicationController
  skip_before_filter :authorize # 認証フィルタースキップ
  
  def create
    if params[:session][:password] = "secret"
      session[:login]= true
      redirect_to home_index_path
    else
      session[:login] = false
      redirect_to signin_path, alert: "パスワードが間違っています。"
    end
  end
    
  def new
  end

  def destroy
    session[:login] = false
    redirect_to signin_path, alert: "ログアウトしました。"
  end
    
end