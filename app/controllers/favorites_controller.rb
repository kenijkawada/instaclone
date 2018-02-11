class FavoritesController < ApplicationController
  def create
    favorite = current_user.favorites.create(picture_id: params[:picture_id])
    redirect_to pictures_url, notice: "I registered favorite posts of #{favorite.picture.user.name}."
  end

  def destroy
    favorite = current_user.favorites.find_by(picture_id: params[:picture_id]).destroy
    redirect_to pictures_url, notice: "I canceled my favorite of #{favorite.picture.user.name}."
  end
end
