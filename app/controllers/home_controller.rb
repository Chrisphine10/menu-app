class HomeController < ApplicationController
  def index
    @menus = Menu.all
    render json: @menus
  end
end
