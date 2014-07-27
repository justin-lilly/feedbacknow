class LecstuController < ApplicationController

  def create
    string = lecstuparams[:student_id]
    lecid = lecstuparams[:lecture_id]
    array = string.split(",")
    idarray = []
    array.each do |x|
      idarray << x.to_i
    end
    idarray.each do |x|
      Lecstu.create(lecture_id: lecid, student_id: x)
    end
    redirect_to "/lectures/#{lecid}"
  end


private

  def lecstuparams
    params.require(:lecstu).permit(:student_id, :lecture_id) 
  end

end


#{"lecstu"=>{":student_id"=>"1,2,3", ":lecture_id"=>"14"}, "a4TPqi4iEh}

Lecstu.create(lecture_id: 1, student_id: 1)