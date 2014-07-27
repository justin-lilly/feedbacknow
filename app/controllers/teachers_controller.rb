class TeachersController < ApplicationController
  def index
    @teachers = Teacher.all
  end

  def show
    @teacher = Teacher.find(params[:id])
    id = @teacher.id
    @lectures = Lecture.where(:teacher_id => id)
    @idus = Idu.where(:student_id => id)
  end

  def new
    @teacher = Teacher.new
  end

  def create
    teacher = Teacher.new(teacher_params)
    teacher.save
    redirect_to '/home'
  end

private

  def teacher_params
    params.require(:teacher).permit(:username) 
  end

end