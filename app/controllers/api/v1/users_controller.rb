class Api::V1::UsersController < ApplicationController
    
    # protect_from_forgery with: :null_session
    before_action :authenticate_user!


    def create
        user = User.where(emai: params[:email].first)

        if user&.valid.password?(params:[:password])
            render json: user.as_json(only: [:email, :confirmation_token]), status: :created
        else
            head(:unauthorized)
        end
    end
          
end
