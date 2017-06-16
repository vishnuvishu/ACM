class HomeController < ApplicationController
	before_action :authenticate_user!
  def index
  	@hearings = Hearing.where("date_of_hearing = ?", Date.today.to_time)
  	#@hearings = Hearing.all
  	@client_cases = ClientCase.all

  end

  def reload_table
  
  	date = Date.parse(params[:date]).to_time
  	@hearings = Hearing.where("date_of_hearing = ?", date)
  	respond_to do |format|
  		format.js{}
	end
  end
end
