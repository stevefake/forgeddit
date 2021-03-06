class CommentsController < ApplicationController
  # http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy
  # has_secure_password
  
  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def create
    @comment = Comment.create(comment_params)
  end

  def delete
    Comment.find(params[:id]).destroy
    redirect_to action: "index"
  end

  private

  def comment_params
  params.require(:comment).permit(:content, :title)
  end
end
