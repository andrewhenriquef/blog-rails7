class CommentsController < ApplicationController
  before_action :set_post

  def create
    comment = @post.comments.create! allowed_params
    CommentsMailer.submitted(comment).deliver_later
    redirect_to @post
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end

  def allowed_params
    params
      .required(:comment)
      .permit(:content)
  end
end
