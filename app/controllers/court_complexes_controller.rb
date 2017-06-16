class CourtComplexesController < ApplicationController
  before_action :set_court_complex, only: [:show, :edit, :update, :destroy]

  # GET /court_complexes
  # GET /court_complexes.json
  def index
    @court_complexes = CourtComplex.all
  end

  # GET /court_complexes/1
  # GET /court_complexes/1.json
  def show
  end

  # GET /court_complexes/new
  def new
    @court_complex = CourtComplex.new
  end

  # GET /court_complexes/1/edit
  def edit
  end

  # POST /court_complexes
  # POST /court_complexes.json
  def create
    @court_complex = CourtComplex.new(court_complex_params)

    respond_to do |format|
      if @court_complex.save
        format.html { redirect_to @court_complex, notice: 'Court complex was successfully created.' }
        format.json { render :show, status: :created, location: @court_complex }
      else
        format.html { render :new }
        format.json { render json: @court_complex.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /court_complexes/1
  # PATCH/PUT /court_complexes/1.json
  def update
    respond_to do |format|
      if @court_complex.update(court_complex_params)
        format.html { redirect_to @court_complex, notice: 'Court complex was successfully updated.' }
        format.json { render :show, status: :ok, location: @court_complex }
      else
        format.html { render :edit }
        format.json { render json: @court_complex.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /court_complexes/1
  # DELETE /court_complexes/1.json
  def destroy
    @court_complex.destroy
    respond_to do |format|
      format.html { redirect_to court_complexes_url, notice: 'Court complex was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_court_complex
      @court_complex = CourtComplex.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def court_complex_params
      params.require(:court_complex).permit(:name, :state_id, :district_id)
    end
end
