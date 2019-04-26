class Doctor < ApplicationRecord
  # validates :name, presence: true
  # validates :speciality, presence: true

  validates_presence_of :name, :speciality
end
