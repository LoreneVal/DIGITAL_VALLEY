class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @areas = ['North Israel',
      "Central Israel",
      "South Israel",
      "Tel Aviv",
      "Jerusalem",
      "Haifa",
      "Golan"]
    @search_area = params[:search]
    @user = current_user
  end
end
