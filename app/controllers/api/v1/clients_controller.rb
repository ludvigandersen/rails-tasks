
class Api::V1::ClientsController < ApplicationController 

      before_action :authenticate_user

      def index
        clients = Client.all  
        render json: {status: 'Success', message:'Loaded users', data:users}, status: :ok 
    end

    def show
        client = Client.find(params[:id]) 
        render json: {status: 'Success', message:'Loaded user', data:users}, status: :ok 
    end
    
    def create
        client = Client.new(email: params[:email])
        if client&.valid_password?(params[:password])
            render json: user.as_json(only: [:email, :authentication_token]), status: :created
        else
            # head(:unauthorized)
            render json: {message: "Invalid user."}, status: 400 
        end
        
    
end