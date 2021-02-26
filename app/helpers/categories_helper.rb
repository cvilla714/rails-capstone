module CategoriesHelper
  def category_list
    Category.all.order(priority: :asc)
  end
end
