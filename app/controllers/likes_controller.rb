class LikesController < ApplicationController
  def create
    @like = current_user.likes.new(article_id: params[:article_id])

    if @like.save
      redirect_to articles_path, notice: 'You liked an article.'
    else
      redirect_to articles_path, alert: 'You cannot like this article.'
    end
   end

  def destroy
    like = Like.find_by(id: params[:id], user: current_user, article_id: params[:article_id])
    # like = Like.find(params[:id])
    if like
      like.destroy
      redirect_to articles_path, notice: 'You disliked an article.'
    else
      redirect_to articles_path, alert: 'You cannot dislike an article that you did not like previously.'
    end
  end
end
