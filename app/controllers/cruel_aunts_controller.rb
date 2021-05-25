class CruelAuntsController < ApplicationController
  before_action :set_cruel_aunt, only: %i[ show edit update destroy ]

  # GET /cruel_aunts or /cruel_aunts.json
  def index
    @cruel_aunts = CruelAunt.all
  end

  # GET /cruel_aunts/1 or /cruel_aunts/1.json
  def show
  end

  # GET /cruel_aunts/new
  def new
    @cruel_aunt = CruelAunt.new
  end

  # GET /cruel_aunts/1/edit
  def edit
  end

  # POST /cruel_aunts or /cruel_aunts.json
  def create
    @cruel_aunt = CruelAunt.new(cruel_aunt_params)

    respond_to do |format|
      if @cruel_aunt.save
        format.html { redirect_to @cruel_aunt, notice: "Cruel aunt was successfully created." }
        format.json { render :show, status: :created, location: @cruel_aunt }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cruel_aunt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cruel_aunts/1 or /cruel_aunts/1.json
  def update
    respond_to do |format|
      if @cruel_aunt.update(cruel_aunt_params)
        format.html { redirect_to @cruel_aunt, notice: "Cruel aunt was successfully updated." }
        format.json { render :show, status: :ok, location: @cruel_aunt }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cruel_aunt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cruel_aunts/1 or /cruel_aunts/1.json
  def destroy
    @cruel_aunt.destroy
    respond_to do |format|
      format.html { redirect_to cruel_aunts_url, notice: "Cruel aunt was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cruel_aunt
      @cruel_aunt = CruelAunt.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cruel_aunt_params
      params.require(:cruel_aunt).permit(:name, :cruel_aunt_id)
    end
end
