class User < ApplicationRecord
  has_many:emergencium

  validates: id_emergencia, presence:true
end
