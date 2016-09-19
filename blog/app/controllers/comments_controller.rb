class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comments_param)
    @comment.article_id = params[:article_id]
    @comment.save
    redirect_to article_path(@comment.article)
  end

  def comments_param
    params.require(:comment).permit(:author_name,:body)
  end
end
