class PostController < ApplicationController
  before_action :set_post, except: %i[index new create]
  before_action :authenticate_user!

  def index
    if Post.find_by(user_id: current_user.id).nil?
      redirect_to new_post_path
    else
      @posts = post.where(user_id: current_user.id)
    end
  end

  def new
    @post = post.new
  end

  def create
    @post = Post.new(post_params)
    @post.save ? redirect_to(@post) : render(:new)
  end

  def show; end

  def edit; end

  def update
    @post.update(post_params) ? redirect_to(@post) : render(:edit)
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:name, :description, :active, :price, :user_id, :category_id, :status, images_attributes: %i[id avatar _destroy])
  end

  def set_post
    @post = post.find(params[:id])
  end
end
