class LecturesController < ApplicationController
  def index
    @lectures = Lecture.all
  end

  def show
    @lecture = Lecture.find(params[:id])
    @idus = Idu.where(:lecture_id => @lecture.id)
  end



end