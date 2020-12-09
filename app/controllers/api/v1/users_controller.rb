class Api::V1::UsersController < ApplicationController
    before_action :authentication_user

    def create
        if (user_signed_in? && current_user.role === 'admin')
            DeviseTokenAuth.bypass_sign_in = true
            @users = User.where(email: params[:email]).first
            render json: @users, status: 200
          else
            render json: {message: "Invalid user."}, status: 400
          end
        end
        
    end
          
end
