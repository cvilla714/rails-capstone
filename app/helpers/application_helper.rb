module ApplicationHelper
  def login_helper
    if current_user.is_a?(User)
      link_to 'Logout', destroy_user_session_path, method: :delete
    else
      (link_to 'Sign In', new_user_session_path) +
        '<br/>'.html_safe +
        (link_to 'Register', new_user_registration_path)
    end
  end

  def like_or_dislike_btn(article)
    like = Like.find_by(article:, user: current_user)
    if like
      link_to('Dislike!', article_like_path(id: like.id, article_id: article.id), method: :delete)
    else
      link_to('Like!', article_likes_path(article_id: article.id), method: :post)
    end
  end
end
