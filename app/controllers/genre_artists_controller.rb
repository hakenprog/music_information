class GenreArtistsController < ApplicationController
  before_action :set_genre_artist, only: [:show, :edit, :update, :destroy]
  before_action :set_artist, only: [:add_genres]
  



  def add_genres
    @genre_artist = GenreArtist.new
  end
  # GET /genre_artists
  # GET /genre_artists.json
  def index
    @genre_artists = GenreArtist.all
  end

  # GET /genre_artists/1
  # GET /genre_artists/1.json
  def show
  end

  # GET /genre_artists/new
  def new
    @genre_artist = GenreArtist.new
  end

  # GET /genre_artists/1/edit
  def edit
  end

  # POST /genre_artists
  # POST /genre_artists.json
  def create
    @genre_artist = GenreArtist.new(genre_artist_params)

    respond_to do |format|
      if @genre_artist.save
        format.js
        format.html { redirect_back(fallback_location: root_path) }
        format.json { render :show, status: :created, location: @genre_artist }
      else
        format.js
        format.html { render :add_genres }
        format.json { render json: @genre_artist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /genre_artists/1
  # PATCH/PUT /genre_artists/1.json
  def update
    respond_to do |format|
      if @genre_artist.update(genre_artist_params)
        format.html { redirect_to :controller => 'artists', :action => 'index' }
        format.json { render :show, status: :ok, location: @genre_artist }
      else
        format.html { render :edit }
        format.json { render json: @genre_artist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /genre_artists/1
  # DELETE /genre_artists/1.json
  def destroy
    @genre_artist.destroy
    respond_to do |format|
      format.html { redirect_back(fallback_location: root_path) }
      format.json { head :no_content }
    end
  end


  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_genre_artist
      @genre_artist = GenreArtist.find(params[:id])
    end

    def set_artist
      @artist = Artist.find(params[:artist_id])
    end

    # Only allow a list of trusted parameters through.
    def genre_artist_params
      params.require(:genre_artist).permit(:genre_id, :artist_id)
    end
end
