class Animal < ApplicationRecord
  validates :name, presence: true, uniqueness: true
end
