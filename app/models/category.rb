class Category < ApplicationRecord
  has_many :article_categories, dependent: :destroy
  has_many :articles, through: :article_categories, source: :article

  validates :name, :priority, presence: true
  validates :name, uniqueness: true
  validates :name, length: { in: 6..29 }

  def most_recent_article
    if articles.most_recents.nil?
      arr = []
      arr.push(Article.new)
    else
      articles.most_recents.limit(1)
    end
  end
end
