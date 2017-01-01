class CreateCategories < ActiveRecord::Migration[5.0]
	
  def up
    create_table :categories do |t|

      t.integer :user_id
      t.string :categoryName, :limit => 100
      t.timestamps
    end
    add_index("categories","user_id")
  end

  def down
  	drop_table :categories
  end

end
