class PadiddlePointsController < ApplicationController
  before_action :set_padiddle_point, only: [:show, :edit, :update, :destroy]

  # GET /padiddle_points
  # GET /padiddle_points.json
  def index
    @padiddle_points = PadiddlePoint.all
  end

  # GET /padiddle_points/1
  # GET /padiddle_points/1.json
  def show
  end

  # GET /padiddle_points/new
  def new
    @padiddles = 0.10
    @padiddle_point = PadiddlePoint.new
  end

  # GET /padiddle_points/1/edit
  def edit
  end

  # POST /padiddle_points
  # POST /padiddle_points.json
  def create
    @padiddle_point = PadiddlePoint.new(padiddle_point_params)
    @padiddles = 0.10

    respond_to do |format|
      if @padiddle_point.save
        format.html { redirect_to root_path, notice: 'Padiddle point was successfully created.' }
        format.json { render :show, status: :created, location: @padiddle_point }
      else
        format.html { render :new }
        format.json { render json: @padiddle_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /padiddle_points/1
  # PATCH/PUT /padiddle_points/1.json
  def update
    respond_to do |format|
      if @padiddle_point.update(padiddle_point_params)
        format.html { redirect_to root_path, notice: 'Padiddle point was successfully updated.' }
        format.json { render :show, status: :ok, location: @padiddle_point }
      else
        format.html { render :edit }
        format.json { render json: @padiddle_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /padiddle_points/1
  # DELETE /padiddle_points/1.json
  def destroy
    @padiddle_point.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Padiddle point was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_padiddle_point
      @padiddle_point = PadiddlePoint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def padiddle_point_params
      params.require(:padiddle_point).permit(:price, :user_id)
    end
end
