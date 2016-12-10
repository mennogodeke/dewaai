class Course < ApplicationRecord
  belongs_to :course_type
  has_many :entries

  #validations
  validates :course_type_id, presence: true
  validates :start_date, presence: true
  validates :description, presence: true
end
