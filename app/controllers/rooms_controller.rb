class RoomsController < ApplicationController
before_action :authenticate_user!, except: :guest_show

  before_filter :authenticate, only: :guest_show

  def authenticate
    user = params[:user_name]
    @room = Room.find(params[:id])
    password = @room.password
    authenticate_or_request_with_http_basic('Administration') do |username, password|
    username == user && password == password
    end
  end

  def new
    @room = Room.new
  end

  def confirm
    @room = Room.new(create_params)
  end

  def create
    # binding.pry
    @room = Room.new(create_params)
    @room.user_id   = current_user.id
    @room.user_name = current_user.nickname
    @room.save
  end


  def show
    @room = Room.find(params[:id])
    @items = Item.where(room_no:params[:id])
  end

  def guest_show
    user = params[:user_name]
    id = params[:id]
    @room = Room.where(user_name: user).first(id).last
    @items = Item.where(user_name: user, room_no: id).order('photo_no')
  end




  def edit
    number = params[:id]
     @room = Room.where(user_name: current_user.nickname).first(number).last
  end

  def update
      room = Room.find(params[:id])
      room.update(update_params)
      # redirect_to 'user/show'
  end

  def destroy
      room = Room.find(params[:id])
      room.destroy
  end




  private
    def create_params
      params.require(:room).permit(:room_name, :room_no, :photo, :zip_code, :address_en, :address_jp, :password,)
    end

    def update_params
      params.require(:room).permit(:room_name, :photo)
    end

    # def direction_params
    #   params.require(:direction).permit(:photo_no, :text)
    # end


end
