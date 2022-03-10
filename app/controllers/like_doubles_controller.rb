class LikeDoublesController < ApplicationController
  before_action :set_like_double, only: %i[ show edit update destroy ]

  # GET /like_doubles or /like_doubles.json
  def index
    @like_doubles = LikeDouble.all
  end

  # GET /like_doubles/1 or /like_doubles/1.json
  def show
  end

  # GET /like_doubles/new
  def new
    @like_double = LikeDouble.new
  end

  # GET /like_doubles/1/edit
  def edit
  end

  # POST /like_doubles or /like_doubles.json
  def create
    @like_double = LikeDouble.new(like_double_params)

    respond_to do |format|
      if @like_double.save
        format.html { redirect_to like_double_url(@like_double), notice: "Like double was successfully created." }
        format.json { render :show, status: :created, location: @like_double }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @like_double.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /like_doubles/1 or /like_doubles/1.json
  def update
    respond_to do |format|
      if @like_double.update(like_double_params)
        format.html { redirect_to like_double_url(@like_double), notice: "Like double was successfully updated." }
        format.json { render :show, status: :ok, location: @like_double }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @like_double.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /like_doubles/1 or /like_doubles/1.json
  def destroy
    @like_double.destroy

    respond_to do |format|
      format.html { redirect_to like_doubles_url, notice: "Like double was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_like_double
      @like_double = LikeDouble.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def like_double_params
      params.require(:like_double).permit(:name)
    end
end
