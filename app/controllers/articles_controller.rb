class ArticlesController < ApplicationController
	before_action :find_article, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!

	def index
		@articles = Article.all.paginate(page: params[:page])
	end

	def show
		@comments = @article.comments.paginate(page: params[:page])
	end
	
	def new
		@article = current_user.articles.build
	end

	def edit
	end

	def create
		@article = current_user.articles.build(article_params)
		
		if @article.save
			redirect_to @article
		else
			render 'new'			
		end		
	end

	def update
		if @article.update(article_params)
			redirect_to @article
		else
			render 'edit'	
		end
	end

	def destroy
		@article.destroy
		redirect_to articles_path
	end

	private def find_article
	@article = Article.find(params[:id])
	end

	private def article_params
	params.require(:article).permit(:title, :text)
	end
end

