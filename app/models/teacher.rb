class Teacher < ActiveRecord::Base
  validates :username, presence: true, uniqueness: true
  has_many :lectures
end

# class Session
#   session[:teacher_id] = @current_user.id 
#   Teacher.find(session[:teacher_id])
# end