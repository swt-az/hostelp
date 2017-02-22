class UsersController < ApplicationController
  before_action :authenticate_user!
  def show
    @rooms = Room.where(user_name: current_user.nickname)
    # binding.pry
    @number = 1
  end
end