class Course < ApplicationRecord
  belongs_to :course_type
  has_many :entries
end
