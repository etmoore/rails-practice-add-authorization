class ClubsController < ApplicationController

  def index
    @clubs = Club.all
  end

  def show
    @club = Club.find(params[:id])
  end

  private

    def require_login
      redirect_to login_path unless current_student
    end

end
