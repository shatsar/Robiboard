class AddNestedSetSupportToCategories < ActiveRecord::Migration
  def change
	change_table :categories do |t|
      t.integer :parent_id
      t.integer :lft
      t.integer :rgt
    end
  end
end
