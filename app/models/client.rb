class Client < ApplicationRecord
    has_many :tasks

   validates :name, presence: true
     
   validates :phone, presence: true
end
