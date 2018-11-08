class ReviewsController < ApplicationController
  before_action :set_review, only; [:edit, :update, :destroy]
  before_action :set_article_to_review, only: [:index, :create]

  def index
    @reviews = @article.reviews
  end

  def new
    @review = Review.new
    set_article_to_review
  end

  def create
    @review = Review.new(review_params)
    @review = @article.review
    if article.save
      redirect_to article_path(@article)
    else
      render 'new'
  end

  def edit

  end

  def update
    @review.update(review_params)
    if review.save
      redirect_to article_path(@article)
    else
     render 'edit'
    end
  end

  def destroy
    @review.destroy
  end


private

  def set_review
    @review = Review.find(params[:id])
  end

  def set_article_to_review
    @article = Article.find(params[:article_id])
  end

  def review_params
    params.require(:review).permit(:name, :email, :review_content, :stars)
  end

end
