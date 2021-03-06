class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :content
      t.references :user, index: true, foreign_key: true
      t.references :book, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :reviews, [:user_id, :created_at]
  end
end
