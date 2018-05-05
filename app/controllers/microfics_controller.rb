class MicroficsController < ApplicationController
  before_action :set_microfic, only: [:show, :edit, :update, :destroy]

  # GET /microfics
  # GET /microfics.json
  def index
    @microfics = Microfic.all
  end

  # GET /microfics/1
  # GET /microfics/1.json
  def show
  end

  # GET /microfics/new
  def new
    @microfic = Microfic.new
  end

  # GET /microfics/1/edit
  def edit
  end

  # POST /microfics
  # POST /microfics.json
  def create
    @microfic = Microfic.new(microfic_params)

    respond_to do |format|
      if @microfic.save
        format.html { redirect_to @microfic, notice: 'Microfic was successfully created.' }
        format.json { render :show, status: :created, location: @microfic }
      else
        format.html { render :new }
        format.json { render json: @microfic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /microfics/1
  # PATCH/PUT /microfics/1.json
  def update
    respond_to do |format|
      if @microfic.update(microfic_params)
        format.html { redirect_to @microfic, notice: 'Microfic was successfully updated.' }
        format.json { render :show, status: :ok, location: @microfic }
      else
        format.html { render :edit }
        format.json { render json: @microfic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /microfics/1
  # DELETE /microfics/1.json
  def destroy
    @microfic.destroy
    respond_to do |format|
      format.html { redirect_to microfics_url, notice: 'Microfic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_microfic
      @microfic = Microfic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def microfic_params
      params.require(:microfic).permit(:content, :user_id)
    end
end
