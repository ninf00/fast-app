class MenusController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /menus
  # GET /menus.json
  def index
    @users = User.all
  end

end
