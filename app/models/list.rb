class List < ApplicationRecord
  has_many :mobs
  has_many :list_user
  has_many :users, through: :list_user
  belongs_to :server
end
