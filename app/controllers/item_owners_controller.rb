class ItemOwnersController < ApplicationController
  before_action :set_item_owner, only: %i[ show edit update destroy ]

  # GET /item_owners or /item_owners.json
  def index
    @item_owners = ItemOwner.all
  end

  # GET /item_owners/1 or /item_owners/1.json
  def show
  end

  # GET /item_owners/new
  def new
    @item_owner = ItemOwner.new
  end

  # GET /item_owners/1/edit
  def edit
  end

  # POST /item_owners or /item_owners.json
  def create
    @item_owner = ItemOwner.new(item_owner_params)

    respond_to do |format|
      if @item_owner.save
        format.html { redirect_to item_owner_url(@item_owner), notice: "Item owner was successfully created." }
        format.json { render :show, status: :created, location: @item_owner }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @item_owner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /item_owners/1 or /item_owners/1.json
  def update
    respond_to do |format|
      if @item_owner.update(item_owner_params)
        format.html { redirect_to item_owner_url(@item_owner), notice: "Item owner was successfully updated." }
        format.json { render :show, status: :ok, location: @item_owner }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @item_owner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /item_owners/1 or /item_owners/1.json
  def destroy
    @item_owner.destroy!

    respond_to do |format|
      format.html { redirect_to item_owners_url, notice: "Item owner was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item_owner
      @item_owner = ItemOwner.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def item_owner_params
      params.require(:item_owner).permit(:owner_name, :email)
    end
end
