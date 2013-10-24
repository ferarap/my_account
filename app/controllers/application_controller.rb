class ApplicationController < ActionController::Base
  protect_from_forgery
  
  private
  
  def after_sign_in_path_for(resource)
    movements_path
  end

#  def after_update_path_for(resource)
#    AppConfig.dashboard_path.call(self, resource)
#  end

  def after_sign_up_path_for(resource)
    movements_path
  end  
end
