module ArticlesHelper
  def nfl_category
    Category.find(3)
  end

  def nba_category
    Category.find(2)
  end

  def soccer_category
    Category.find(1)
  end

  def mlb_category
    Category.find(4)
  end

  def nhl_category
    Category.find(5)
  end

  def edit_content(article)
    return ' ' unless current_user.id == article.author_id

    render 'categories/show_links', article: article
  end
end
