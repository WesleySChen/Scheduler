class PDatesController < ApplicationController
  before_action :set_p_date, only: [:show, :edit, :update, :destroy]

  # GET /p_dates
  # GET /p_dates.json
  def index
    @p_dates = PDate.all
  end

  # GET /p_dates/1
  # GET /p_dates/1.json
  def show
  end

  # GET /p_dates/new
  def new
    @p_date = PDate.new
  end

  # GET /p_dates/1/edit
  def edit
  end

  # POST /p_dates
  # POST /p_dates.json
  def create
    @p_date = PDate.new(p_date_params)

    respond_to do |format|
      if @p_date.save
        format.html { redirect_to @p_date, notice: 'P date was successfully created.' }
        format.json { render :show, status: :created, location: @p_date }
      else
        format.html { render :new }
        format.json { render json: @p_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /p_dates/1
  # PATCH/PUT /p_dates/1.json
  def update
    respond_to do |format|
      if @p_date.update(p_date_params)
        format.html { redirect_to @p_date, notice: 'P date was successfully updated.' }
        format.json { render :show, status: :ok, location: @p_date }
      else
        format.html { render :edit }
        format.json { render json: @p_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /p_dates/1
  # DELETE /p_dates/1.json
  def destroy
    @p_date.destroy
    respond_to do |format|
      format.html { redirect_to p_dates_url, notice: 'P date was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_p_date
      @p_date = PDate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def p_date_params
      params.require(:p_date).permit(:avail_date)
    end
end
