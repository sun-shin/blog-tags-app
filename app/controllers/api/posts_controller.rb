class Api::PostsController < ApplicationController

  def index
    @posts = Post.all 
    render "index.json.jb"
  end

  def show
    @posts = Post.find(params[:id])
    render "show.json.jb"
  end

  def create
    @post = Post.new(
      title: params[:title],
      text: params[:text],
      image_url: params[:image_url]
    )
    if @post.save
      render "show.json.jb"
    else
      render json: { errors: @post.errors.full_messages }, status: 422
    end
  end

  def update
    @post = Post.find(params[:id])
    
    @post.title = params[:title] || @post.title
    @post.text = params[:text] || @post.text
    @post.image_url = params[:image_url] || @post.image_url

    if @post.save
      render "show.json.jb"
    else
      render json: { errors: @post.errors.full_messages }, status: 422
    end
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    render json: {message:"Post was destroyed"} 
  end
end
