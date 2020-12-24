module CategoriesHelper
  def category_list
    Category.all.order(priority: :desc)
  end
end
