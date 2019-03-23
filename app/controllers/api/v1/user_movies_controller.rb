class Api::V1::UserMoviesController < ApplicationController


def index
	@user_movie = UserMovie.all
	render json: @user_movie
end

def show
	@user_movie = UserMovie.find(movie_params[:id])
	render json: @user_movie
end

def new
	@user_movie = UserMovie.new
	render json: @user_movie
end

def create
	@user_movie = UserMovie.create(movie_params)
	render json: @user_movie
end

def edit
	@user_movie = UserMovie.find(movie_params[:id])
	render json: @user_movie
end

def update
  @user_movie = UserMovie.find(movie_params[:id])
  @user_movie.update(movie_params)
	render json: @user_movie
end


	private

def movie_params
			 params.require(:movie).permit(:id, :rating, :review, :user_id, :movie_id)
end

end
