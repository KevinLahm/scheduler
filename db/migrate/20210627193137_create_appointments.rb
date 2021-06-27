class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.string :user_first_name
      t.string :user_last_name
      t.string :user_email
      t.string :user_phone_no
      t.string :doc_email
      t.string :booking_time

      t.timestamps
    end
  end
end
