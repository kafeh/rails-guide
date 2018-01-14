class CommentsController < ApplicationController
  before_action :find_article, only: [:create, :destroy]

  def create
    @comment = current_user.comments.build(comment_params)
    @comment.article = @article 
    if @article.save
      @comment.save
      flash[:success] = "Comment created!"
      redirect_to article_path(@article)
    else
      redirect_to article_path(@article)    
    end   
  end

  def destroy
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article)
  end

  private def find_article
  @article = Article.find(params[:article_id])
  end

  private def comment_params
  params.require(:comment).permit(:commenter, :body)
  end
end
