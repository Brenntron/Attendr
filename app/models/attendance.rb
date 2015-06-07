class Attendance < ActiveRecord::Base
  belongs_to :student

  validates_presence_of :student_id
  validates_presence_of :date
end
