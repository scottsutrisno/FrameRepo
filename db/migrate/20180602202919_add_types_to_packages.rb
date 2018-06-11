class AddTypesToPackages < ActiveRecord::Migration[5.2]
  def change
    add_column :packages, :fw_type, :string
  end
end
