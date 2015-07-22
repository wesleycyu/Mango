class ReviewsController < ApplicationController

 def new
    @movie = Movie.find(params[:movie_id])
    @review = @movie.reviews.build
  end

  def create
    @movie = Movie.find(params[:movie_id])
    @review = @movie.reviews.build(review_params)
    @review.user_id = current_user.id

    if @review.save
      redirect_to movies_path(@movie), notice: "Your review for #{@movie.title} has been added!"
    else
      render :new
    end
  end

  protected

  def review_params
    params.require(:review).permit(:text, :rating_out_of_ten)
  end

end