class AlbumTypesController < ApplicationController
  before_action :set_album_type, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!


  # GET /album_types
  # GET /album_types.json
  def index
    @album_types = AlbumType.all
  end

  # GET /album_types/1
  # GET /album_types/1.json
  def show
  end

  # GET /album_types/new
  def new
    @album_type = AlbumType.new
  end

  # GET /album_types/1/edit
  def edit
  end

  # POST /album_types
  # POST /album_types.json
  def create
    @album_type = AlbumType.new(album_type_params)

    respond_to do |format|
      if @album_type.save
        format.html { redirect_back(fallback_location: root_path) }
        format.json { render :show, status: :created, location: @album_type }
      else
        format.html { render :new }
        format.json { render json: @album_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /album_types/1
  # PATCH/PUT /album_types/1.json
  def update
    respond_to do |format|
      if @album_type.update(album_type_params)
        format.html { redirect_to @album_type, notice: 'Album type was successfully updated.' }
        format.json { render :show, status: :ok, location: @album_type }
      else
        format.html { render :edit }
        format.json { render json: @album_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /album_types/1
  # DELETE /album_types/1.json
  def destroy
    @album_type.destroy
    respond_to do |format|
      format.html { redirect_back(fallback_location: root_path) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_album_type
      @album_type = AlbumType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def album_type_params
      params.require(:album_type).permit(:nombre)
    end
end
