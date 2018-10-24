class Entity < ApplicationRecord
  has_many :emergencies
  has_many :users, :through => :emergencies
end
