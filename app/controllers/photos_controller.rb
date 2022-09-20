class PhotosController < ApplicationController
  def index
    @photos = Photos.all
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new
    @photo.album = @album
    @photo.save
  end
end
