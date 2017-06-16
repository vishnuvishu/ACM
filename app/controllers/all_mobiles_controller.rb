class AllMobilesController < ApplicationController
  before_action :set_all_mobile, only: [:show, :edit, :update, :destroy]

  # GET /all_mobiles
  # GET /all_mobiles.json
  def index
    @all_mobiles = AllMobile.all
  end

  # GET /all_mobiles/1
  # GET /all_mobiles/1.json
  def show
  end

  # GET /all_mobiles/new
  def new
    @all_mobile = AllMobile.new
  end

  # GET /all_mobiles/1/edit
  def edit
  end

  # POST /all_mobiles
  # POST /all_mobiles.json
  def create
    @all_mobile = AllMobile.new(all_mobile_params)

    respond_to do |format|
      if @all_mobile.save
        format.html { redirect_to @all_mobile, notice: 'All mobile was successfully created.' }
        format.json { render :show, status: :created, location: @all_mobile }
      else
        format.html { render :new }
        format.json { render json: @all_mobile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /all_mobiles/1
  # PATCH/PUT /all_mobiles/1.json
  def update
    respond_to do |format|
      if @all_mobile.update(all_mobile_params)
        format.html { redirect_to @all_mobile, notice: 'All mobile was successfully updated.' }
        format.json { render :show, status: :ok, location: @all_mobile }
      else
        format.html { render :edit }
        format.json { render json: @all_mobile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /all_mobiles/1
  # DELETE /all_mobiles/1.json
  def destroy
    @all_mobile.destroy
    respond_to do |format|
      format.html { redirect_to all_mobiles_url, notice: 'All mobile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_all_mobile
      @all_mobile = AllMobile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def all_mobile_params
      params.require(:all_mobile).permit(:mobile, :client_id)
    end
end
