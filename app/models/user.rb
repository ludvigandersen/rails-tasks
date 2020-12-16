# frozen_string_literal: true

class User < ActiveRecord::Base

  extend Devise::Models
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :validatable
  include DeviseTokenAuth::Concerns::User

  # has_secure_token :confirmation_token

  validates :email, presence: true
  validates :password, presence: true

  user = User.new
  user.save
  user.confirmation_token
  
  
end
