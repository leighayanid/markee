class CreateLinks < ActiveRecord::Migration[5.0]
  def up
    create_table :links do |t|

      t.integer :user_id
      t.integer :category_id
      t.string :link, :limit => 250
      t.string :title, :limit => 200
      t.timestamps
    end
    add_index("links","user_id")
    add_index("links","category_id")
  end
  
  def down
  	drop_table :links
  end
end
