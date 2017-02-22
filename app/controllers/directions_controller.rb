class DirectionsController < ApplicationController
      def new
    @direction = Direction.new
    end

    def create
    @direction = Direction.new(create_params)
    @direction.user_name = current_user.nickname
    @direction.save
    end

    private
    def create_params
      params.require(:direction).permit(:photo_no, :text,)
    end
end
