class Api::V1::UsersController < ApplicationController
skip_before_action :authorized, only: [:create]

def index
		@user = User.all
		render json: @user
end

def profile
	 render json: { user: UserSerializer.new(current_user) }, status: :accepted
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
    if @user.valid?
			@token = encode_token(user_id: @user.id)
      render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
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
	# byebug
		 params.permit(:id, :name, :password)
end


end
