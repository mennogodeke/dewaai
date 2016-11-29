class CourseType < ApplicationRecord
  belongs_to :design
  has_many :courses
end
