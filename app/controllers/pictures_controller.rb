class PicturesController < ApplicationController
  before_action :set_picture, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user, only: [:index,:new, :show, :edit]


  def top
  end

  def index
    @pictures = Picture.all
  end

  def new
    if params[:back]
      @picture = Picture.new(picture_params)
    else
      @picture = Picture.new
    end
  end

  def create
    @picture = Picture.new(picture_params)
    @picture.user_id = current_user.id
    @picture.image.retrieve_from_cache! params[:cache][:image]
    if @picture.save
      ContactMailer.contact_mail(@picture).deliver
      redirect_to pictures_path, notice: "Post created"
    else
      render 'new'
    end
  end

  def show
    @favorite = current_user.favorites.find_by(picture_id: @picture.id)
  end

  def edit
  end

  def update
    if @picture.update(picture_params)
      redirect_to pictures_path, notice:"The post has been updated."
    else
      reder "edit"
    end
  end

  def destroy
    @picture.destroy
    redirect_to pictures_path, notice:"The post has been deleted."
  end

  def confirm
    @picture = Picture.new(picture_params)
    render :new if @picture.invalid?
  end

  private
  def picture_params
    params.require(:picture).permit(:content, :image)
  end

  def set_picture
    @picture = Picture.find(params[:id])
  end
end
