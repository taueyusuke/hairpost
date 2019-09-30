class LikesController < ApplicationController
  before_action :authenticate_user!, only: %i[edit update destroy new create]

  def create
    @like = current_user.likes.build(like_params)
    @post = @like.post
    if @like.save
      respond_to :js
    end
  end

  def destroy
    @like = Like.find_by(id: params[:id])
    @post = @like.post
    if @like.destroy
      respond_to :js
    end
  end

  def index
    post_like_count = Post.joins(:likes).group(:post_id).count
    post_liked_ids = Hash[post_like_count.sort_by { |_, v| -v }].keys
    @post_ranking = Post.where(id: post_liked_ids)
    @post_ranking = Post.page(params[:page])
  end

  private
  def like_params
    params.permit(:post_id)
  end
end
