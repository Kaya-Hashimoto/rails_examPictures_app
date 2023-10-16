class PicturesController < ApplicationController

  def show
    @favorite = current_user.favorites.find_by(picture_id: @picture.id)
  end
end
