class LecturesController < ApplicationController
  def index
    @lectures = Lecture.all
  end

  def show
    @lecture = Lecture.find(params[:id])
    @idus = Idu.where(:lecture_id => @lecture.id)
  end

  def create
    Lecture.create(lecture_params)
    redirect_to "/teachers/#{lecture_params[:teacher_id]}"
  end

private

  def lecture_params
    params.require(:lecture).permit(:name, :teacher_id) 
  end


end