class MoviesController < ApplicationController
    def index
        render json: Movie.all
    end

    def show
        render json: Movie.find(params[:id])
    end

    def create
        movie = Movie.new(movie_params)
        if movie.save then
            render json: movie
        else 
            render json: {message: 'Failed to create movie', errors: movie.errors }, status: 400
        end
    end

    def update
        movie = Movie.find(params[:id])
        movie.update(movie_params)
        if movie.save then
            render json: movie
        else 
            render json: {message: 'Failed to update movie', errors: movie.errors }, status: 400
        end
    end

    def destroy
        movie = Movie.find(params[:id])
        movie.destroy
    end

    private 

    def movie_params
        params.require(:movie).permit(:title, :description, :rating, :image)
    end
end