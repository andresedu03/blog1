class PostsController < ApplicationController
  http_basic_authenticate_with name: "", password: "", only: :dashboard
  def index
    @post = Post.order(id: :desc)
  end

  def dashboard
  end

  def create
    @post = Post.create(title: params[:title],
                               image_url: params[:image_url],
                               content: params[:content])
  end
end