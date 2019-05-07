class Tag < ApplicationRecord
  has_many :taggings
  has_many :malones, through: :taggings
end
