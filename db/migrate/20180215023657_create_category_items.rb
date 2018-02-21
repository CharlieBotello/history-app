class CreateCategoryItems < ActiveRecord::Migration[5.1]
  def change
    create_table :category_items do |t|
      t.integer :categorizable_id
      t.string :categorizable_type
      t.integer :category_id

      t.timestamps
    end
  end
end
