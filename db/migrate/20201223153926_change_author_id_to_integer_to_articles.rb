class ChangeAuthorIdToIntegerToArticles < ActiveRecord::Migration[6.0]
  def change
    change_column :articles, :author_id, :integer, using: 'author_id::integer'
  end
end
