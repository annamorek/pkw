class VoivodeshipsController < ApplicationController
  before_action :set_voivodeship, only: [:show, :edit, :update, :destroy]

  # GET /voivodeships
  # GET /voivodeships.json
  def index
    @voivodeships = Voivodeship.all
  end

  # GET /voivodeships/1
  # GET /voivodeships/1.json
  def show
  end

  # GET /voivodeships/new
  def new
    @voivodeship = Voivodeship.new
  end

  # GET /voivodeships/1/edit
  def edit
  end

  # POST /voivodeships
  # POST /voivodeships.json
  def create
    @voivodeship = Voivodeship.new(voivodeship_params)

    respond_to do |format|
      if @voivodeship.save
        format.html { redirect_to @voivodeship, notice: 'Voivodeship was successfully created.' }
        format.json { render :show, status: :created, location: @voivodeship }
      else
        format.html { render :new }
        format.json { render json: @voivodeship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /voivodeships/1
  # PATCH/PUT /voivodeships/1.json
  def update
    respond_to do |format|
      if @voivodeship.update(voivodeship_params)
        format.html { redirect_to @voivodeship, notice: 'Voivodeship was successfully updated.' }
        format.json { render :show, status: :ok, location: @voivodeship }
      else
        format.html { render :edit }
        format.json { render json: @voivodeship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /voivodeships/1
  # DELETE /voivodeships/1.json
  def destroy
    @voivodeship.destroy
    respond_to do |format|
      format.html { redirect_to voivodeships_url, notice: 'Voivodeship was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_voivodeship
      @voivodeship = Voivodeship.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def voivodeship_params
      params.require(:voivodeship).permit(:name)
    end
end
