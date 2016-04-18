class LinksController < ApplicationController
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
  end

  def destroy
    Link.find(params[:id]).destroy
    redirect_to action: "index"
  end

  private

  def link_params
    params.require(:post).permit(:subject, :description, :post)
  end
end
