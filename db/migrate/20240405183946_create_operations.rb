class CreateOperations < ActiveRecord::Migration[7.1]
  def change
    create_table :operations do |t|
      t.references :trip, null: false, foreign_key: true
      t.string :recipient_name
      t.string :sender_name
      t.string :address
      t.datetime :operation_time
      t.string :status
      t.string :operation_type

      t.timestamps
    end
  end
end
