class Malone < ApplicationRecord
  belongs_to :creator, class_name: :User
  has_many :taggings
  has_many :tags, through: :taggings
  has_many :postups
  has_many :fans, through: :postups, source: :user
end
