class User < ApplicationRecord
  has_many :created_malones, class_name: :Malone, foreign_key: :creator_id
  has_many :supporters, through: :created_malones, source: :fans
  has_many :applied_tags, through: :created_malones, source: :tags
  has_many :postups
  has_many :supported_malones, through: :postups, source: :malone

  validates_uniqueness_of :username

  has_secure_password
end
