class ChildActorsController < ApplicationController
  before_action :set_child_actor, only: %i[ show edit update destroy ]

  # GET /child_actors or /child_actors.json
  def index
    @child_actors = ChildActor.all
  end

  # GET /child_actors/1 or /child_actors/1.json
  def show
  end

  # GET /child_actors/new
  def new
    @child_actor = ChildActor.new
  end

  # GET /child_actors/1/edit
  def edit
  end

  # POST /child_actors or /child_actors.json
  def create
    @child_actor = ChildActor.new(child_actor_params)

    respond_to do |format|
      if @child_actor.save
        format.html { redirect_to @child_actor, notice: "Child actor was successfully created." }
        format.json { render :show, status: :created, location: @child_actor }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @child_actor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /child_actors/1 or /child_actors/1.json
  def update
    respond_to do |format|
      if @child_actor.update(child_actor_params)
        format.html { redirect_to @child_actor, notice: "Child actor was successfully updated." }
        format.json { render :show, status: :ok, location: @child_actor }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @child_actor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /child_actors/1 or /child_actors/1.json
  def destroy
    @child_actor.destroy
    respond_to do |format|
      format.html { redirect_to child_actors_url, notice: "Child actor was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_child_actor
      @child_actor = ChildActor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def child_actor_params
      params.require(:child_actor).permit(:name, :traumatized_child)
    end
end
