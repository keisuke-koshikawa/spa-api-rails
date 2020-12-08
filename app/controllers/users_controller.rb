class UsersController < ApplicationController
    before_action :set_user, only: [:show, :update, :destroy]
    before_action :authenticate_user!

    def index
      @users = User.all
    end

    def show
    end


    private

      def set_user
        @user = User.find(params[:id])
      end

      def user_params
        params.require(:user).permit(:title, :body).merge(user: current_user)
      end

  end
