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

  def theform
    @studentid = params[:id]
    @lecturename = params[:lecture]
    @idutype = params[:type]
  end

  def newidu
    Idu.create(idu_params)
    lecturename = Lecture.find(idu_params[:lecture_id]).name
    studentid = idu_params[:student_id]
    redirect_to "/students/#{studentid}/#{lecturename}"
  end



private

  def student_params
    params.require(:student).permit(:username) 
  end

  def idu_params
    params.require(:idu).permit(:lecture_id, :keyword, :student_id, :idu_type)
  end

end


