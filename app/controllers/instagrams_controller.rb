class InstagramsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_instagram, only: [:edit, :update, :destroy]

  def index
    @instagrams = Instagram.all
  end

  def new
    if params[:back]
      @instagram = Instagram.new(instagrams_params)
    else
      @instagram = Instagram.new
    end
  end

  def create #呼び出されるのはcreate.html.erb
  @instagram = Instagram.new(instagrams_params)
  @instagram.user_id = current_user.id
    if @instagram.save
      redirect_to instagrams_path, notice: "写真投稿しました！"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @instagram.update(instagrams_params)
      redirect_to instagrams_path, notice: "投稿内容を更新しました！"
    else
      render 'edit'
    end
  end

  def destroy
    @instagram.destroy
    redirect_to instagrams_path, notice: "写真を削除しました！"
  end

  PERMISSIBLE_ATTRIBUTES = %i(name avatar avatar_cache)

  private
    def instagrams_params
      params.require(:instagram).permit(:title, :content, :image_url)
    end
    def set_instagram
      @instagram = Instagram.find(params[:id])
    end


end
