class Emergency < ApplicationRecord
  belongs_to :user
  belongs_to :entity
end
