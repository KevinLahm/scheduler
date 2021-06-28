class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.string :booking_time
      t.string :user_id
      t.string :doctor_id

      t.timestamps
    end
  end
end
