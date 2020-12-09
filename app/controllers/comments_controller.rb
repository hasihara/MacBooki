class CommentsController < ApplicationController

   before_action :authenticate_user

  def create
    post = Post.find(params[:post_id])
    @comment = post.comments.build(comment_params)
    @comment.user_id = current_user.id
   if @comment.save
      flash[:notice] = "コメントしました"
      redirect_to(post)
    else
      flash[:notice] = "コメントできませんでした"
      redirect_to(post)
    end
  end

  def destroy
   comment = Comment.find(params[:id])
   comment.destroy
   flash[:notice] = "コメントを削除しました"
   redirect_to("/posts/index")
 end

  private
    def comment_params
      params.require(:comment).permit(:content)
    end

end
