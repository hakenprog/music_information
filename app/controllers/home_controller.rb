class HomeController < ApplicationController
	def index
		redirect_to :controller => 'artists', :action => 'index' 
	end
end
