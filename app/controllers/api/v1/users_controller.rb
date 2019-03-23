class Api::V1::UsersController < ApplicationController


def index
		@user = User.all
		render json: @user
end

def show
		@user = User.find(user_params[:id])
		render json: @user
end

def new
	@user = User.new
	render json: @user
end

def create
  @user = User.create(user_params)
	render json: @user
end

def edit
	@user = User.find(user_params[:id])
	render json: @user
end

def update
	@user = User.find(user_params[:id])
  @user.update(user_params)
	render json: @user
end



private

def user_params
		 params.require(:movie).permit(:id, :name, :password_digest)
 end


end
