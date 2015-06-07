class Student < ActiveRecord::Base
  has_many :attendances

  validates :first_name, :last_name, presence: true
  validates :first_name, :last_name, length: { minimum: 3 }
end
