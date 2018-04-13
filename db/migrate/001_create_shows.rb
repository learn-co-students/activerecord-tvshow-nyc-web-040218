class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :network
      t.string :name
      t.string :day
      t.integer :rating
    end
  end
end
