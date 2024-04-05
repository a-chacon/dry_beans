class CreateTrips < ActiveRecord::Migration[7.1]
  def change
    create_table :trips do |t|
      t.references :route, null: false, foreign_key: true
      t.datetime :start_time
      t.datetime :end_time
      t.decimal :distance_covered
      t.decimal :duration
      t.string :status

      t.timestamps
    end
  end
end
