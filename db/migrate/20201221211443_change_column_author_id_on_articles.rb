class ChangeColumnAuthorIdOnArticles < ActiveRecord::Migration[6.0]
  def change
    change_column :articles , :author_id, :string
  end
end
