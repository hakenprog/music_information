class MainPageController < ApplicationController

	def index
		@artists = Artist.all()
		@albums = Album.all()
		@songs = Song.all()
	end	


end
