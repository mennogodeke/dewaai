class Ship < ApplicationRecord
  belongs_to :design

  #validations
  validates :name, presence: true
  validates :design_id, presence: true
end
