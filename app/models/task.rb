class Task < ApplicationRecord
    belongs_to :client

    validates :title, presence: true
    validates :description, presence: true
end
