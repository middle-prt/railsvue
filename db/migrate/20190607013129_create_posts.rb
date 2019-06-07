class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :company_id
      t.integer :release_id
      t.string :company_name
      t.datetime :posted_at
      t.integer :address
      t.integer :main_category_name
      
      t.timestamps
    end
  end
end
