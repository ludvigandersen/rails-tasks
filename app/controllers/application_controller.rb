class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken
  
  # protect_from_forgery with: :null_session
  before_action :configure_permitted_parameters, if: :devise_controller?
  respond_to :json
  
  def new
    
  end
  
  private
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
  end
  
  def authenticate_user
    @current_user = User.find_by_api_key(params[:confirmation_token])
    unless @current_user
      render :status=>403, :json=>{:message=>"Invalid token"}
    end
  end
  
  def current_user
    @current_user
  end
  
  def after_sign_out_path_for(resource_or_scope)
    root_path
  end
end
