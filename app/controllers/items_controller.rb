class ItemsController < ApplicationController
  before_action :set_item, only: [:edit, :update, :destroy]

  # GET /items
  # GET /items.json
  def index
    @items = Item.all
  end

  # GET /items/1
  # GET /items/1.json
  def show
# binding.pry
    @room = Room.find(params[:room_id])
    @items = Item.where(room_no:params[:room_id]).order('photo_no ASC')
  end

  # GET /items/new
  def new
    # binding.pry
    @room = Room.find(params[:room_id])
    @item = Item.new

  end

  # GET /items/1/edit
  def edit
        @room = Room.find(params[:room_id])
    @items = Item.where(room_no:params[:id])
  end

  # POST /items
  # POST /items.json
  def create
    @item = Item.new(item_params)
    @item.user_name = current_user.nickname
    @item.room_no = params[:room_id]
    @item.save
    @items = Item.where(room_no: @item.room_no).order('photo_no ASC')
    # binding.pry
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    redirect_to :action => "show"
    @item.update(item_params)
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @item.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:description, :image,:photo_no)
    end
end
