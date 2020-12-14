class Api::V1::UsersController < ApplicationController
    # before_action ::configure_permitted_parameters, if: :devise_controller?
    
    def create
        user = User.find_by(email: params["user"][:email])
                    .try(:authenticate, params["user"]["password"])
        if user
            session[:user_id] = user.id
            render json: {
                status: :created,
                logged_in: true,
                user: user
            }
        else
            # head(:unauthorized)
            render json: {message: "Invalid user."}, status: 400 
        end
        
    end

    # private
    # def configure_permitted_parameters
    #     devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password])
    # end
          
end
