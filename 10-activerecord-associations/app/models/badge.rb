class Badge < ActiveRecord::Base
  has_many :trainer_badges
  has_many :trainers, through: :trainer_badges
end
