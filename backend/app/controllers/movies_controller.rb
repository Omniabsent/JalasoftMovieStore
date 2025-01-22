class MoviesController < ApplicationController
    def index
        page = params[:page].to_i 
        per_page = params[:per_page].to_i
        if per_page == 0 then
            per_page = 10
        end
        puts params
        puts page
        puts per_page
        offset = (page - 1) * per_page
        movies = Movie.search(params).limit(per_page).offset(offset)
        render json: movies
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