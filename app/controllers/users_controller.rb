class UsersController < ApplicationController
	attr_accessor :user

	def new
		@user = User.new
	end

	def show
		@user = User.where(_id: params[:id]).first
	end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to user_path(@user._id)
		else
			redirect_to new_user_path
		end
	end

	def index
		@users = User.all
	end

	private

	def user_params
		params.require(:user).permit(:first_name,:last_name)
	end

end