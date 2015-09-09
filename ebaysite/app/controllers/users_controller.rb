class UsersController < ApplicationController
	def index
		@users = User.all 
	end


	def show
		@products = "user products"
	end

	def new
		@users = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
      redirect_to users_path
    else
      render :new
    end

	end
	def user_params
		params.require(:user).permit(:name,:email)
	end

	def destroy
	end
end
