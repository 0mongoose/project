class SprojectsController < ApplicationController
  before_action :set_sproject, only: [:show, :edit, :update, :destroy]
  before_action :require_authorization
  
  # GET /sprojects
  # GET /sprojects.json
  def index
    @sprojects = Sproject.all
  end

  # GET /sprojects/1
  # GET /sprojects/1.json
  def show
  end

  # GET /sprojects/new
  def new
    @sproject = Sproject.new
  end

  # GET /sprojects/1/edit
  def edit
  end

  # POST /sprojects
  # POST /sprojects.json
  def create
    @sproject = Sproject.new(sproject_params)

    respond_to do |format|
      if @sproject.save
        format.html { redirect_to @sproject, notice: 'Sproject was successfully created.' }
        format.json { render :show, status: :created, location: @sproject }
      else
        format.html { render :new }
        format.json { render json: @sproject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sprojects/1
  # PATCH/PUT /sprojects/1.json
  def update
    respond_to do |format|
      if @sproject.update(sproject_params)
        format.html { redirect_to @sproject, notice: 'Sproject was successfully updated.' }
        format.json { render :show, status: :ok, location: @sproject }
      else
        format.html { render :edit }
        format.json { render json: @sproject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sprojects/1
  # DELETE /sprojects/1.json
  def destroy
    @sproject.destroy
    respond_to do |format|
      format.html { redirect_to sprojects_url, notice: 'Sproject was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sproject
      @sproject = Sproject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sproject_params
      params.require(:sproject).permit(:name, :description, :mode, :completed_on)
    end
end
