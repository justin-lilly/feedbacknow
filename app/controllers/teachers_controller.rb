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

  def error
  end

  def signin
    teacher = Teacher.find_by_username(teacher_params[:username])
    if teacher 
      redirect_to "/teachers/#{teacher.id}"
    else
      redirect_to "/teachers/error"
    end
  end

private

  def teacher_params
    params.require(:teacher).permit(:username) 
  end


end