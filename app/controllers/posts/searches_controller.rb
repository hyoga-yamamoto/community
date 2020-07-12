class Posts::SearchesController < ApplicationController
  def index
    @posts = Post.all
    
  end
end
