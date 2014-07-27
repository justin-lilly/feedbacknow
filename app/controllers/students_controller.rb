class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    id = @student.id
    @idus = Idu.where(:student_id => id)
    lecstuarray = Lecstu.where(:student_id => @student.id)
    @lecturearray = []
    lecstuarray.each do |x|
      @lecturearray << x.lecture_id
    end
  end

  def new
    @student = Student.new
  end

  def create
    student = Student.new(student_params)
    student.save
    redirect_to '/home'
  end

  def edit

  end

  def something
    @studentid = params[:id]
    @lecturename = params[:lecture]
  end

private

  def student_params
    params.require(:student).permit(:username) 
  end

end

'/students/:id/:lecture'