class ReviewsController < ApplicationController
  before_action :set_review, only: [:edit, :update, :destroy]
  before_action :set_article_to_review, only: [:edit, :index, :create]

  def index
    @reviews = @article.reviews
  end

  def new
    @review = Review.new
    set_article_to_review
  end

  def create
    @review = Review.new(review_params)
    @review.article = @article
    # @review = @article.reviews
    if @review.save
      redirect_to article_path(@article)
    else
      render 'new'
    end
  end

  def edit

  end

  def update
    @review.update(review_params)
    set_article_to_review
    if @review.save
      redirect_to article_path(@article)
    else
     render 'edit'
    end
  end

  def destroy
    set_article_to_review
    @review.destroy
    redirect_to article_path(@article)
  end


private

  def set_review
    @review = Review.find(params[:id])
  end

  def set_article_to_review
    @article = Article.find(params[:article_id])
  end

  def review_params
    params.require(:review).permit(:name, :email, :review_content, :star)
  end

end
