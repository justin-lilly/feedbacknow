class Idu < ActiveRecord::Base
  belongs_to :student
  belongs_to :lecture
end
