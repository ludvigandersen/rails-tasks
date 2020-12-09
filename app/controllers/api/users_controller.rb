class Api::UsersController < ApplicationController
   
   # Get/users
   def index
      users = User.all
      
      render json: users, status: :ok
   end
   
   # Create users
   def create
      user = User.where(email: params[:email]).first
      if user.valid_password?(params[:passowrd])
         render json: user.as_json(only: [:id, :email]), status: :created
      else
         head(:unauthorized)
      end
   end
   
   # Delete users
   def destroy
      @user = User.find(params[:id]))
      if @user
         @user.destroy(user_params)
         render json: {message: 'User successfully deleted.'}, status: 200
      else
         render error: {error: 'Unable to delete User.'}, status: 400
      end
   end
   
   # method of the users
   private
   def user_params
      params.require(:users).permit(:email, :password)
      
   end
   
end
