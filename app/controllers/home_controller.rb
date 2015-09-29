class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
  	@years = Year.where("user_id = #{current_user.id}")
  end
end
