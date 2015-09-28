class HomeController < ApplicationController
  def index
  	@years = Year.all
  end
end
