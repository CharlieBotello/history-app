class AddCategorytoStories < ActiveRecord::Migration[5.1]
  def change
    add_column :stories, :category, :integer
  end
end
