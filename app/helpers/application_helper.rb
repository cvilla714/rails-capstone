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
    like = Like.find_by(article: article, user: current_user)
    if like
      link_to('Dislike!', article_like_path(id: like.id, article_id: article.id), method: :delete)
    else
      link_to('Like!', article_likes_path(article_id: article.id), method: :post)
    end
  end

  def login
    if current_user.is_a?(User)
      "<li class=\"nav-item\">
      #{link_to 'New Article', new_article_path, class: 'nav-link'}
      </li>"
      end
  end

  def logout
    if current_user.is_a?(User)
      "<li class=\"nav-item\">
        <h1>Hi \"#{current_user.first_name}\"</h1>
      </li>"
      "<li class=\"nav-item\">
        #{link_to 'Log out', destroy_user_session_path, method: :delete, class: 'nav-link'}
      </li>"
    else
      "<li class=\"nav-item\">
          #{link_to 'Login', new_user_session_path, class: 'nav-link active'}
        </li>"
      "<li class=\"nav-item\">
          #{link_to 'Register', new_user_registration_path, class: 'nav-link'}
        </li>"
    end
  end
end
