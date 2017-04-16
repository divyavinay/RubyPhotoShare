class PhotosController < ApplicationController
  before_action :set_photo, only: [:show, :edit, :update, :destroy]

  # GET /photos
  # GET /photos.json
  def index
  end

  # GET /photos/1
  # GET /photos/1.json
  def show
   @userView = User.find(params[:id])
   @photos = @userView.photos

  end

  def display
    @user_id = params[:id]
    @user_photo = Photo.find(params[:id])
    @comments = @user_photo.comments
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photo
      @photo = Photo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def photo_params
      params.require(:photo).permit(:file_name, :date_time, :user_id)
    end
end
