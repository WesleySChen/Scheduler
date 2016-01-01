class PTimesController < ApplicationController
  before_action :set_p_time, only: [:show, :edit, :update, :destroy]

  # GET /p_times
  # GET /p_times.json
  def index
    @p_times = PTime.all
  end

  # GET /p_times/1
  # GET /p_times/1.json
  def show
  end

  # GET /p_times/new
  def new
    @p_time = PTime.new
  end

  # GET /p_times/1/edit
  def edit
  end

  # POST /p_times
  # POST /p_times.json
  def create
    @p_time = PTime.new(p_time_params)

    respond_to do |format|
      if @p_time.save
        format.html { redirect_to @p_time, notice: 'P time was successfully created.' }
        format.json { render :show, status: :created, location: @p_time }
      else
        format.html { render :new }
        format.json { render json: @p_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /p_times/1
  # PATCH/PUT /p_times/1.json
  def update
    respond_to do |format|
      if @p_time.update(p_time_params)
        format.html { redirect_to @p_time, notice: 'P time was successfully updated.' }
        format.json { render :show, status: :ok, location: @p_time }
      else
        format.html { render :edit }
        format.json { render json: @p_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /p_times/1
  # DELETE /p_times/1.json
  def destroy
    @p_time.destroy
    respond_to do |format|
      format.html { redirect_to p_times_url, notice: 'P time was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_p_time
      @p_time = PTime.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def p_time_params
      params.require(:p_time).permit(:p_start, :p_end)
    end
end
