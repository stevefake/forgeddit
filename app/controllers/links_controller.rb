class LinksController < ApplicationController
  # http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]

  def index
    @links = Link.all
  end

  def new
    @link = Link.new
  end

  def show
    @link = Link.find(params[:id])
  end

  def edit
    @link = Link.find(params[:id])
  end

  def update
  end

  def create
    @link = Link.create(link_params)
    @comment = @link.comments.create(comment_params)
    redirect_to link_path(@link)
  end

  def destroy
    Link.find(params[:id]).destroy
    redirect_to action: "index"
  end

  private

  def link_params
    params.require(:link).permit(:subject, :description, :post)
  end

  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end
end
