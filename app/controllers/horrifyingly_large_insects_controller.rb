class HorrifyinglyLargeInsectsController < ApplicationController
  before_action :set_horrifyingly_large_insect, only: %i[ show edit update destroy ]

  # GET /horrifyingly_large_insects or /horrifyingly_large_insects.json
  def index
    @horrifyingly_large_insects = HorrifyinglyLargeInsect.all
  end

  # GET /horrifyingly_large_insects/1 or /horrifyingly_large_insects/1.json
  def show
  end

  # GET /horrifyingly_large_insects/new
  def new
    @horrifyingly_large_insect = HorrifyinglyLargeInsect.new
  end

  # GET /horrifyingly_large_insects/1/edit
  def edit
  end

  # POST /horrifyingly_large_insects or /horrifyingly_large_insects.json
  def create
    @horrifyingly_large_insect = HorrifyinglyLargeInsect.new(horrifyingly_large_insect_params)

    respond_to do |format|
      if @horrifyingly_large_insect.save
        format.html { redirect_to @horrifyingly_large_insect, notice: "Horrifyingly large insect was successfully created." }
        format.json { render :show, status: :created, location: @horrifyingly_large_insect }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @horrifyingly_large_insect.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /horrifyingly_large_insects/1 or /horrifyingly_large_insects/1.json
  def update
    respond_to do |format|
      if @horrifyingly_large_insect.update(horrifyingly_large_insect_params)
        format.html { redirect_to @horrifyingly_large_insect, notice: "Horrifyingly large insect was successfully updated." }
        format.json { render :show, status: :ok, location: @horrifyingly_large_insect }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @horrifyingly_large_insect.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /horrifyingly_large_insects/1 or /horrifyingly_large_insects/1.json
  def destroy
    @horrifyingly_large_insect.destroy
    respond_to do |format|
      format.html { redirect_to horrifyingly_large_insects_url, notice: "Horrifyingly large insect was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_horrifyingly_large_insect
      @horrifyingly_large_insect = HorrifyinglyLargeInsect.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def horrifyingly_large_insect_params
      params.require(:horrifyingly_large_insect).permit(:name, :traumatized_child_id)
    end
end
