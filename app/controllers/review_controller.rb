class ReviewsController < ApplicationController
    before_action :set_movie, only: [:create, :destroy]
  
    def create
      @review = @movie.reviews.build(review_params)
      if @review.save
        redirect_to @movie, notice: 'Avaliação criada com sucesso.'
      else
        render 'movies/show'
      end
    end
  
    def destroy
      @review = Review.find(params[:id])
      @review.destroy
      redirect_to @review.movie, notice: 'Avaliação excluída com sucesso.'
    end
  
    private
  
    def set_movie
      @movie = Movie.find(params[:movie_id])
    end
  
    def review_params
      params.require(:review).permit(:comment, :stars)
    end
  end
  