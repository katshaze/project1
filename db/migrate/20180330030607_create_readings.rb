class CreateReadings < ActiveRecord::Migration[5.1]
  def change
    create_table :readings do |t|
      t.integer :user_id
      t.integer :book_id
      t.boolean :to_read
      t.boolean :reading
      t.boolean :read
      t.string :stars

      t.timestamps
    end
  end
end
