class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.date :date
      t.text :body
      t.boolean :completed

      t.timestamps
    end
  end
end
