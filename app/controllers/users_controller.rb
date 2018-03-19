class UsersController < ApplicationController
  def index
  end

  def filter
    @user_genres = UserGenre.where(genre_id: params[:genres]).group(:user_id).count(:id)
    @users = User.where(id: @user_genres.keys)
  end
end
