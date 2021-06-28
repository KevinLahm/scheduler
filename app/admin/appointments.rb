ActiveAdmin.register Appointment do
  permit_params :booking_time, :user_id, :doctor_id

  show do |_t|
    attributes_table do
      row :booking_time
      row :user_id
      row :doctor_id
    end
  end

  form html: { enctype: 'multipart/form-data' } do |f|
    f.inputs do
      f.input :booking_time
      f.input :user_id
      f.input :doctor_id
    end
    f.actions
  end
end
