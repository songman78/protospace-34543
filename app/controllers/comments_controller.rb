class CommentsController < ApplicationController
  def index
    @comment = Comment.new
    @prototype = Prototype.find(params[:prototype_id])
  end

  def create
    @prototype = Prototype.find(params[:prototype_id])
    @comment = @prototype.comments.new(comment_params)
    @comment.save
    redirect_to prototype_path(@prototype)
  end
  
  def show
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id,prototype_id: params[:prototype_id])
  end
end
