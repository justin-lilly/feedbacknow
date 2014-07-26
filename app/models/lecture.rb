class Lecture < ActiveRecord::Base
  belongs_to :teacher
  has_many :idus
end
