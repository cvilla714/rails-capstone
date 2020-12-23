class Article < ApplicationRecord
  # belongs_to :user
  belongs_to :author, class_name: 'User'
  has_many :likes, dependent: :destroy

  has_many :article_categories, dependent: :destroy
  has_many :categories, through: :article_categories, source: :category

  validates :title, length: { in: 6..29 }
  validates :body, length: { maximum: 500 }
  validates :title, :body, presence: true
  validates :title, uniqueness: true
end
