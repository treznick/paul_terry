class TraumatizedChildrenController < ApplicationController
  before_action :set_traumatized_child, only: %i[ show edit update destroy ]

  # GET /traumatized_children or /traumatized_children.json
  def index
    @traumatized_children = TraumatizedChild.all
  end

  # GET /traumatized_children/1 or /traumatized_children/1.json
  def show
  end

  # GET /traumatized_children/new
  def new
    @traumatized_child = TraumatizedChild.new
  end

  # GET /traumatized_children/1/edit
  def edit
  end

  # POST /traumatized_children or /traumatized_children.json
  def create
    @traumatized_child = TraumatizedChild.new(traumatized_child_params)

    respond_to do |format|
      if @traumatized_child.save
        format.html { redirect_to @traumatized_child, notice: "Traumatized child was successfully created." }
        format.json { render :show, status: :created, location: @traumatized_child }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @traumatized_child.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /traumatized_children/1 or /traumatized_children/1.json
  def update
    respond_to do |format|
      if @traumatized_child.update(traumatized_child_params)
        format.html { redirect_to @traumatized_child, notice: "Traumatized child was successfully updated." }
        format.json { render :show, status: :ok, location: @traumatized_child }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @traumatized_child.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /traumatized_children/1 or /traumatized_children/1.json
  def destroy
    @traumatized_child.destroy
    respond_to do |format|
      format.html { redirect_to traumatized_children_url, notice: "Traumatized child was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_traumatized_child
      @traumatized_child = TraumatizedChild.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def traumatized_child_params
      params.require(:traumatized_child).permit(:name)
    end
end
