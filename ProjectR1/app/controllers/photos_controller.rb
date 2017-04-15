class PhotosController < ApplicationController
  before_action :set_photo, only: [:show, :edit, :update, :destroy]

  # GET /photos
  # GET /photos.json
  def index
    @user = User.all
    redirect_to(users_path)
  end

  # GET /photos/1
  # GET /photos/1.json
  def show
   @userView = User.find(params[:id])
    @photos = @userView.photos
=begin
    @photos.each do |photo|
      @comments = Comment.where(photo_id: photo)
    end
=end
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
