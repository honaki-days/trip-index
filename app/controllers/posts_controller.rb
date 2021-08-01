class PostsController < ApplicationController
  def index
    @posts = Post.all
    @post = Hash.new
    @post[:description] = "説明文"
  end
end