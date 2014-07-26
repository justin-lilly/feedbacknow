class LecturesController < ApplicationController
  def index
    @lectures = Lecture.all
  end

  def show
    @lecture = Lecture.find(params[:id])
  end

  def home
  end

  def login
  end

  def signup
  end

end