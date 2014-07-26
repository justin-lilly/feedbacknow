class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  # def show
  #   @student = Student.find(params[:id])
  # end

  def new
    @student = Student.new
  end

  def create
    student = Student.new(student_params)
    student.save
    redirect_to '/home'
  end

private

  def student_params
    params.require(:student).permit(:username) 
  end

end