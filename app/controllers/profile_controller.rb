class ProfileController < ApplicationController
    def index
        @user = User.find(id: current_user_id)
    end
    def show
        @user = User.find(params[:id])
    end
end



