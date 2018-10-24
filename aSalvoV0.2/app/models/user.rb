class User < ApplicationRecord
  has_and_belongs_to_many :contacts
  has_many :emergencies
  has_many :entities, :through => :emergencies
end
