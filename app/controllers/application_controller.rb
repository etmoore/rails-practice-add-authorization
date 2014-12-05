class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :require_login

  def current_student
    Student.find_by_id(session[:student_id])
  end

  helper_method :current_student

  private

    def require_login
      redirect_to login_path unless current_student
    end

end
