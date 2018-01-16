class ArticleCategoriesController < ApplicationController
	before_action :find_article_categories, only: [:edit, :update, :destroy]

  def index
    @article_categories = ArticleCategory.all
  end

  def new
    @article_categories = ArticleCategory.new
  end

  def edit
  end

  def create
    @article_categories = ArticleCategory.new(article_categories_params)

    if @article_categories.save
      redirect_to article_categories_path
    else
      render 'new'
    end
  end

  def update
    if @article_categories.update(article_categories_params)
      redirect_to article_categories_path
    else
      render 'edit' 
    end
  end

  def destroy
    @article_categories.destroy
    redirect_to article_categories_path
  end

  private def find_article_categories
    @article_categories = ArticleCategory.find(params[:id])
  end

  private def article_categories_params
    params.require(:article_category).permit(:name, :description)
  end
end
