class Task < ApplicationRecord
    # belongs_to :client
    include DeviseTokenAuth::Concerns::User

    validates :title, presence: true
    validates :description, presence: true
end
