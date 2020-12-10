class Api::V1::UsersController < ApplicationController
    # before_action :authenticate_user

    def index
        users = User.all  
        render json: {status: 'Success', message:'Loaded users', data:users}, status: :ok 
    end

    def show
        users = User.find(params[:id]) 
        render json: {status: 'Success', message:'Loaded user', data:users}, status: :ok 
    end
    
    def create
        user = User.new(email: params[:email])
        if user&.valid_password?(params[:password])
            render json: user.as_json(only: [:email, :authentication_token]), status: :created
        else
            # head(:unauthorized)
            render json: {message: "Invalid user."}, status: 400 
        end
        
    end
          
end
