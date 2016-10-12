class ListUser < ApplicationRecord
  belongs_to :list
  belongs_to :user
  belongs_to :role
end
