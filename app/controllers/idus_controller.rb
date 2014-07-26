class IdusController < ApplicationController

  def index
    @idus = Idu.all
  end

  def new
    @idu = Idu.new
  end

  def show
    @idu = Idu.find(params[:id])
  end

  def home
  end

  def login
  end

  def signup
  end

end