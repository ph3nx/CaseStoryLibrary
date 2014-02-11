class CasestoriesController < ApplicationController
  before_action :set_casestory, only: [:show, :edit, :update, :destroy]

  # GET /casestories
  # GET /casestories.json
  def index
    @casestories = Casestory.all
  end

  # GET /casestories/1
  # GET /casestories/1.json
  def show
  end

  # GET /casestories/new
  def new
    @casestory = Casestory.new
  end

  # GET /casestories/1/edit
  def edit
  end

  # POST /casestories
  # POST /casestories.json
  def create
    @casestory = Casestory.new(casestory_params)

    respond_to do |format|
      if @casestory.save
        format.html { redirect_to @casestory, notice: 'Casestory was successfully created.' }
        format.json { render action: 'show', status: :created, location: @casestory }
      else
        format.html { render action: 'new' }
        format.json { render json: @casestory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /casestories/1
  # PATCH/PUT /casestories/1.json
  def update
    respond_to do |format|
      if @casestory.update(casestory_params)
        format.html { redirect_to @casestory, notice: 'Casestory was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @casestory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /casestories/1
  # DELETE /casestories/1.json
  def destroy
    @casestory.destroy
    respond_to do |format|
      format.html { redirect_to casestories_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_casestory
      @casestory = Casestory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def casestory_params
      params.require(:casestory).permit(:header, :segname, :custname, :countryname, :segurl, :custurl, :countryurl, :content, :imgurl)
    end
end
