class CreatePackages < ActiveRecord::Migration[5.2]
  def change
    create_table :packages do |t|
      t.integer :user_id
      t.string :url
      t.string :name
      t.integer :language_id
      t.string :developed_by
      t.boolean :live
      t.boolean :reviewed, default: false
      t.datetime :last_updated
      t.timestamps
    end
  end
end
