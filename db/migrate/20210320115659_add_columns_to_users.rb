class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :company_name, :string
    add_column :users, :location, :string
    add_column :users, :brand, :boolean, default: false
  end
end
