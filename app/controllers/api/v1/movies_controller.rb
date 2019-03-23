class Api::V1::MoviesController < ApplicationController

def index
		@movie = Movie.all
 		render json: @movie
end

def show
	@movie = Movie.find(params[:id])
	render json: @movie
end

def delete
	@movie = Movie.find(params[:id])
	render json: @movie
end

private

def movie_params
		 params.require(:movie).permit(:id, :description, :title, :poster)
 end
end
