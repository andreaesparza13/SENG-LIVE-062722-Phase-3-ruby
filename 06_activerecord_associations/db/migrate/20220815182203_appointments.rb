class Appointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.string :request
      t.datetime :time
      t.integer :pet_id
      t.integer :handler_id
    end
  end
end
