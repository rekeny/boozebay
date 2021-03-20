class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.references :user, null: false, foreign_key: true
      t.string :category
      t.date :deal_start_date
      t.date :deal_end_date
      t.datetime :auction_end_time
      t.integer :estimated_volume
      t.integer :min_bid
      t.string :unit_type
      t.boolean :closed_bids
      t.text :description
      t.string :requirements
      t.boolean :auction_open

      t.timestamps
    end
  end
end
