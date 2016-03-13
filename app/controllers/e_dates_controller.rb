 class EDatesController < ApplicationController
  before_action :set_e_date, only: [:show, :edit, :update, :destroy]

  # GET /e_dates
  # GET /e_dates.json
  def index
    @e_dates = EDate.all
  end

  # GET /e_dates/1
  # GET /e_dates/1.json
  def show
    @e_date = EDate.find(params[:id])
  end

  # GET /e_dates/new
  def new
    @e_date = EDate.new
  end

  # GET /e_dates/1/edit
  def edit
  end

  # POST /e_dates
  # POST /e_dates.json
  def create
    @e_date = EDate.new(e_date_params)

    respond_to do |format|
      if @e_date.save
        format.html { redirect_to @e_date, notice: 'E date was successfully created.' }
        format.json { render :show, status: :created, location: @e_date }
      else
        format.html { render :new }
        format.json { render json: @e_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /e_dates/1
  # PATCH/PUT /e_dates/1.json
  def update
    respond_to do |format|
      if @e_date.update(e_date_params)
        format.html { redirect_to @e_date, notice: 'E date was successfully updated.' }
        format.json { render :show, status: :ok, location: @e_date }
      else
        format.html { render :edit }
        format.json { render json: @e_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /e_dates/1
  # DELETE /e_dates/1.json
  def destroy
    @e_date.destroy
    respond_to do |format|
      format.html { redirect_to e_dates_url, notice: 'E date was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_e_date
      @e_date = EDate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def e_date_params
      params.require(:e_date).permit(:pos_date)
    end
end
