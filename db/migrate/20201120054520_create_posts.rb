class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.integer :prefecture_id
      t.integer :budget_id
      t.text :explain
      t.string :place
      t.references :user, foreing_key: true
      t.integer :transportation_id
      t.timestamps
    end
  end
end
