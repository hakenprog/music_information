class CoreController < ApplicationController
	require 'open-uri'
	before_action :set_html, only: [:show]

	def show
		if  @html_otd.include? @matchvalue
				
					

		else

			@html_otd = "<p>No se encuentra el valor dado</p>"
		end
	end



	private

		def set_html
			@matchvalue = params[:q]
      		@song = Song.find(params[:song_id]) 
      		date = @song.album.fecha_lanz
      		@html_otd = ((open('https://www.onthisday.com/date/'+date.strftime("%Y/%B/%d"))).read).match(/<article(?: .*?)?>(.*?)<\/article>/imu)[0]
      		@html_wiki = (open('https://es.wikipedia.org/w/api.php?action=query&list=search&srprop=snippet&format=json&origin=*&utf8=&srsearch='+ '"' + @song.album.nombre+ " ").read)
		end
end
