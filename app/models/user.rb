class User < ApplicationRecord
  has_many :list_user
  has_many :lists, through: :list_user
end
