class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable
  
  has_many :tasks
  # has_many :clients
  
  # Get/users
  # def index
  #   @users = User.all
    
  #   render json: @users, status: :ok
  # end
  
  # Create users
  # def create
  #   @user = User.new(user_params)
  #   if @user.save
  #     render json: @user
  #   else
  #     render error: {error: 'Unable to create User.'}, status: 400
  #   end
  # end
  
  # Get users
  # def show
  #   @user = User.find(params[:id])
  #   render json: @users  
  # end
  
  # Update users
  # def update
  #   @user = User.find(params[:id]))
  #   if @user
  #     @user.update(user_params)
  #     render json: {message: 'User successfully updated.'}, status: 200
  #   else
  #     render error: {error: 'Unable to update User.'}, status: 400
  #   end
  # end
  
  # Delete users
  # def delete
  #   @user = User.find(params[:id]))
  #   if @user
  #     @user.delete(user_params)
  #     render json: {message: 'User successfully deleted.'}, status: 200
  #   else
  #     render error: {error: 'Unable to delete User.'}, status: 400
  #   end
  # end
  
  # private
  # def user_params
  #   params.require(:users).permit(:email, :password)
    
  # end
  
  
  
end
