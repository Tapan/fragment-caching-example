class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)

    if @comment.save
      redirect_to @post, success: "Comment was successfully created"
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to @post, success: "Comment was successfully deleted"
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
