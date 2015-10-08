class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :ask
      t.text :answer
      
      t.timestamps null: false
    end
  end
end
