class CreateBids < ActiveRecord::Migration[6.0]
  def change
    create_table :bids do |t|
      t.references :user, null: false, foreign_key: true
      t.references :listing, null: false, foreign_key: true
      t.integer :amount
      t.string :sweetner
      t.boolean :selected, default: false

      t.timestamps
    end
  end
end
