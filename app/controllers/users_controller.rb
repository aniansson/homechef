class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
        @dishes = @user.dishes.all
    end
end
