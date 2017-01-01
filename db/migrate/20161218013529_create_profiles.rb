class CreateProfiles < ActiveRecord::Migration[5.0]
  def up
    create_table :profiles do |t|

      t.integer :user_id
      t.string :first_name, :last_name, :address, :image
      t.timestamps
    end
    add_index(:profiles, :user_id)
  end

  def down
  	drop_table :profiles
  end
end
