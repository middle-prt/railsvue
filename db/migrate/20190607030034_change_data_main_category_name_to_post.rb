class ChangeDataMainCategoryNameToPost < ActiveRecord::Migration[5.2]
  def change
    change_column :posts, :main_category_name, :string
  end
end
