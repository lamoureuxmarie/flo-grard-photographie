class AlbumsController < ApplicationController
  before_action :authenticate_user!, only: %i[new create update destroy]
  def index
    @albums = policy_scope(Album)
  end

  def show
    @album = Album.find(params[:id])
    authorize @album
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.new
    @album.user = current_user
    @album.save
  end

  def edit
    authorize @album
  end

  def update
    authorize @album
    if @album.update(album_params)
      redirect_to album_path, notice: "Modification effectuée"
    else
      render :edit
    end
  end

  def album_params
    params.require(:album).permit(:title, :description)
  end
end
