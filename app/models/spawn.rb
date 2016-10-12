class Mob < ApplicationRecord
  belongs_to :killer, class_name: 'User', foreign_key: 'killed_by_user_id'
  belongs_to :list
  belongs_to :mob, conditions: { renewal: false } # If renewall, use API, else, use our DB.
end
