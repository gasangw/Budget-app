class EntitiesController < ApplicationController
  before_action :set_entity, only: %i[show edit update destroy]

  # GET /entities or /entities.json
  def index
    @entities = current_user.entities.all
  end

  # GET /entities/1 or /entities/1.json
  def show
    @entity = current_user.entities.find(params[:id])
  end

  # GET /entities/new
  def new
    @entity = Entity.new
    @group_id = params[:group_id]
  end

  # POST /entities or /entities.json
  def create
    @entity = current_user.entities.new(entity_params)

    respond_to do |format|
      if @entity.save
        format.html { redirect_to group_path(@entity.group_id), notice: 'Entity was successfully created.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /entities/1 or /entities/1.json
  def update
    respond_to do |format|
      if @entity.update(entity_params)
        format.html { redirect_to entity_url(@entity), notice: 'Entity was successfully updated.' }
        format.json { render :show, status: :ok, location: @entity }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @entity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entities/1 or /entities/1.json
  def destroy
    @entity.destroy

    respond_to do |format|
      format.html { redirect_to group_url(params[:group_id]), notice: 'Entity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_entity
    @entity = Entity.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def entity_params
    params.require(:entity).permit(:name, :amount, :group_id)
  end
end
