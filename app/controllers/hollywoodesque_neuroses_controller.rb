class HollywoodesqueNeurosesController < ApplicationController
  before_action :set_hollywoodesque_neurose, only: %i[ show edit update destroy ]

  # GET /hollywoodesque_neuroses or /hollywoodesque_neuroses.json
  def index
    @hollywoodesque_neuroses = HollywoodesqueNeurose.all
  end

  # GET /hollywoodesque_neuroses/1 or /hollywoodesque_neuroses/1.json
  def show
  end

  # GET /hollywoodesque_neuroses/new
  def new
    @hollywoodesque_neurose = HollywoodesqueNeurose.new
  end

  # GET /hollywoodesque_neuroses/1/edit
  def edit
  end

  # POST /hollywoodesque_neuroses or /hollywoodesque_neuroses.json
  def create
    @hollywoodesque_neurose = HollywoodesqueNeurose.new(hollywoodesque_neurose_params)

    respond_to do |format|
      if @hollywoodesque_neurose.save
        format.html { redirect_to @hollywoodesque_neurose, notice: "Hollywoodesque neurose was successfully created." }
        format.json { render :show, status: :created, location: @hollywoodesque_neurose }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @hollywoodesque_neurose.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hollywoodesque_neuroses/1 or /hollywoodesque_neuroses/1.json
  def update
    respond_to do |format|
      if @hollywoodesque_neurose.update(hollywoodesque_neurose_params)
        format.html { redirect_to @hollywoodesque_neurose, notice: "Hollywoodesque neurose was successfully updated." }
        format.json { render :show, status: :ok, location: @hollywoodesque_neurose }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @hollywoodesque_neurose.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hollywoodesque_neuroses/1 or /hollywoodesque_neuroses/1.json
  def destroy
    @hollywoodesque_neurose.destroy
    respond_to do |format|
      format.html { redirect_to hollywoodesque_neuroses_url, notice: "Hollywoodesque neurose was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hollywoodesque_neurose
      @hollywoodesque_neurose = HollywoodesqueNeurose.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hollywoodesque_neurose_params
      params.require(:hollywoodesque_neurose).permit(:name, :child_actor_id)
    end
end
