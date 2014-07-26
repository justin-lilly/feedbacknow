class Student < ActiveRecord::Base
  validates :username, presence: true, uniqueness: true
  has_many :idus
end

# class Session
#   session[:student_id] = @current_user.id 
#   Student.find(session[:student_id])
# end