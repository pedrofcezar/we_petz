class ArticlesController < ApplicationController
  before_action :set_article, only: [:edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to article_path(@article), message: "Aubriagdow!"
    else
      render 'new'
    end
  end

  def edit

  end

  def update
    @article.update(article_params)
    if @article.save
      redirect_to article_path(@article), message: "Aubriagdow!"
    else
      render 'edit'
    end
  end

  def destroy
    @article.destroy
    redirect_to articles_path, message: "Artigo #{@article.title} foi excluído!"
  end

private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
      params.require(:article).permit(
        :author,
        :email,
        :title,
        :content,
        :dog_key,
        :cat_key,
        :product_key,
        :pet_key,
        :photo
         )
  end

end
