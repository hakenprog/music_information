class GeneratesController < ApplicationController
  before_action :set_generate, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!


  # GET /generates
  # GET /generates.json
  def index
    @generates = Generate.all
  end

  # GET /generates/1
  # GET /generates/1.json
  def show
  end

  # GET /generates/new
  def new
    @generate = Generate.new
  end

  # GET /generates/1/edit
  def edit
  end

  # POST /generates
  # POST /generates.json
  def create
    @generate = Generate.new(generate_params)

    respond_to do |format|
      if @generate.save
        format.html { redirect_to @generate, notice: 'Generate was successfully created.' }
        format.json { render :show, status: :created, location: @generate }
      else
        format.html { render :new }
        format.json { render json: @generate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /generates/1
  # PATCH/PUT /generates/1.json
  def update
    respond_to do |format|
      if @generate.update(generate_params)
        format.html { redirect_to @generate, notice: 'Generate was successfully updated.' }
        format.json { render :show, status: :ok, location: @generate }
      else
        format.html { render :edit }
        format.json { render json: @generate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /generates/1
  # DELETE /generates/1.json
  def destroy
    @generate.destroy
    respond_to do |format|
      format.html { redirect_to generates_url, notice: 'Generate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_generate
      @generate = Generate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def generate_params
      params.require(:generate).permit(:song, :nombre, :descripcion, :duracion_sec, :album_id)
    end
end
