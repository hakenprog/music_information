class ArtistAlbumsController < ApplicationController
  before_action :set_artist_album, only: [:show, :edit, :update, :destroy]
  before_action :set_artist, only: [:add_albums]
  before_action :authenticate_user!



  # GET /artist_albums
  # GET /artist_albums.json
  def add_albums
    @artist_albums = ArtistAlbum.new
  end
  def index
    @artist_albums = ArtistAlbum.all
  end

  # GET /artist_albums/1
  # GET /artist_albums/1.json
  def show
  end

  # GET /artist_albums/new
  def new
    @artist_album = ArtistAlbum.new
  end

  # GET /artist_albums/1/edit
  def edit
  end

  # POST /artist_albums
  # POST /artist_albums.json
  def create
    @artist_album = ArtistAlbum.new(artist_album_params)

    respond_to do |format|
      if @artist_album.save
        format.js   {render inline: "location.reload();" }
        format.html {redirect_back(fallback_location: root_path)}
        format.json { render :show, status: :created, location: @artist_album }
      else
        format.html { render :new }
        format.json { render json: @artist_album.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artist_albums/1
  # PATCH/PUT /artist_albums/1.json
  def update
    respond_to do |format|
      if @artist_album.update(artist_album_params)
        format.html { redirect_to @artist_album, notice: 'State was successfully updated.' }
        format.json { render :show, status: :ok, location: @artist_album }
      else
        format.html { render :edit }
        format.json { render json: @artist_album.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artist_albums/1
  # DELETE /artist_albums/1.json
  def destroy
    @artist_album.destroy
    respond_to do |format|
      format.html { redirect_back(fallback_location: root_path) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artist_album
      @artist_album = ArtistAlbum.find(params[:id])
    end

    def set_artist
      @artist = Artist.find(params[:artist_id])
    end

    # Only allow a list of trusted parameters through.
    def artist_album_params
      params.require(:artist_album).permit(:artist_id, :album_id)
    end
end
