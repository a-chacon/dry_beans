class CreateRoutes < ActiveRecord::Migration[7.1]
  def change
    create_table :routes do |t|
      t.string :name
      t.string :start_location
      t.string :end_location
      t.decimal :distance
      t.decimal :duration
      t.text :description

      t.timestamps
    end
  end
end
