class UsersController < ApplicationController
  def show
    @user = User.find_by(id: params[:id])
    @posts = Post.page(params[:page])
                 .where(user_id: @user.id)
                 .order('created_at desc')
                 .includes(:user, :photos)
  end
  end
end
