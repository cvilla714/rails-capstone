class Article < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :likes, dependent: :destroy

  has_many :article_categories, dependent: :destroy
  has_many :categories, through: :article_categories, source: :category

  validates :title, length: { in: 6..100 }
  validates :body, length: { maximum: 5000}
  validates :title, :body, presence: true
  validates :title, uniqueness: true

  def self.most_likes
    if !Like.all.blank?
      main = joins(:likes).group(:article_id).count.max_by do |_s, l|
        l
      end[0]

      Article.find(main)
    else
      Article.find(1)
    end
  end

  def self.most_recents
    Article.order(created_at: :asc)
  end
  end
