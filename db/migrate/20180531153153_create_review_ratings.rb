class CreateReviewRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :review_ratings do |t|
      t.integer :review_id
      t.integer :user_id
      t.integer :thumbs_up
      t.integer :thumbs_down
      t.timestamps
    end
  end
end
