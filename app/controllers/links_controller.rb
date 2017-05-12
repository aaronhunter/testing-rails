# Controller for Link objects
class LinksController < ApplicationController
  # Show all links
  def index
    @links = Link.all
  end

  # New link
  def new
    @link = Link.new
  end

  # Crud
  def create
    @link = Link.new(link_params)

    if @link.save
      redirect_to @link
    else
      render :new
    end
  end

  # cRud
  def show
    @link = Link.find(params[:id])
  end

  private

  def link_params
    params.require(:link).permit(:title, :url)
  end
end
