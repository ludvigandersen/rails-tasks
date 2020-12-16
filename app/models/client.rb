class Client < ApplicationRecord
    # has_many :tasks
    include DeviseTokenAuth::Concerns::User

   validates :name, presence: true
     
   validates :phone, presence: true
end
