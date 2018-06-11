class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :package_id
      t.integer :overall_rating
      t.integer :saved_time, default: 0
      t.integer :cool_design, default: 0
      t.integer :advanced_features, default: 0
      t.integer :hard_customize, default: 0
      t.integer :many_files, default: 0
      t.integer :bad_navigation, default: 0
      t.integer :hard_to_learn, default: 0
      t.integer :more_customize, default: 0
      t.integer :better_docs, default: 0
      t.integer :less_bulky, default: 0
      t.string :pros
      t.string :cons
      t.string :general
      t.timestamps
    end
  end
end
