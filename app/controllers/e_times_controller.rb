class ETimesController < ApplicationController
  before_action :set_e_time, only: [:show, :edit, :update, :destroy]

  # GET /e_times
  # GET /e_times.json
  def index
    @e_times = ETime.all
  end

  # GET /e_times/1
  # GET /e_times/1.json
  def show
  end

  # GET /e_times/new
  def new
    @e_time = ETime.new
  end

  # GET /e_times/1/edit
  def edit
  end

  # POST /e_times
  # POST /e_times.json
  def create
    @e_time = ETime.new(e_time_params)

    respond_to do |format|
      if @e_time.save
        format.html { redirect_to @e_time, notice: 'E time was successfully created.' }
        format.json { render :show, status: :created, location: @e_time }
      else
        format.html { render :new }
        format.json { render json: @e_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /e_times/1
  # PATCH/PUT /e_times/1.json
  def update
    respond_to do |format|
      if @e_time.update(e_time_params)
        format.html { redirect_to @e_time, notice: 'E time was successfully updated.' }
        format.json { render :show, status: :ok, location: @e_time }
      else
        format.html { render :edit }
        format.json { render json: @e_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /e_times/1
  # DELETE /e_times/1.json
  def destroy
    @e_time.destroy
    respond_to do |format|
      format.html { redirect_to e_times_url, notice: 'E time was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_e_time
      @e_time = ETime.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def e_time_params
      params.require(:e_time).permit(:start_time, :end_time)
    end
end
