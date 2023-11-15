class ApplicationController < ActionController::Base

    before_action :configure_permitted_parameters, if: :devise_controller?
    protect_from_forgery with: :exception



    def after_sign_in_path_for(resource)
        if resource.is_a?(User) && resource.role == "admin"
            # Redirect admin to a specific path
            admin_dashboard_path
        elsif resource.is_a?(User) && resource.role == "teacher"
            # Redirect teacher to a specific path
            teacher_dashboard_path
        elsif resource.is_a?(User) && resource.role == "student"
            # Redirect student to a specific path
            student_dashboard_path
        else
            # Redirect other users to a default path
            super
        end
    end

 

    protected
  
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :email, :date_of_birth, :phone_number, :address, :city, :country, :role])
    end



end
