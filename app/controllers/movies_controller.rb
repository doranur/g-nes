class MoviesController < ApplicationController
    before_action :set_movie, only: [:show,:edit,:destroy,:update]
    
    
    def index
        @movies = Movie.all
    end
    def new
        @movie = Movie.new
    end
    def show
    end
        
    def edit 
       
    end
    def update
        
       if @movie.update(movie_params)
           redirect_to root_path
       else
           render :edit
       end
    end
    def destroy
        @movie = Movie.find(params[:id])
        @movie.destroy
        redirect_to root_path
    end
    
    def create
        @movie = Movie.new(movie_params)
        @movie.published_date =DateTime.now
        @movie.save
        if @movie.save
         redirect_to root_path
        else
        render :new
        end
    end
    
    
    private
    def set_movie
        @movie = Movie.find(params[:id])
    end
    
    def movie_params
        params.require(:movie).permit(:name,:description,:avatar,:update)
    end
   
end