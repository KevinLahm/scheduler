ActiveAdmin.register Appointment do
  permit_params :user_first_name, :user_last_name, :user_email, :user_phone_no, :doc_email, :booking_time

  show do |_t|
    attributes_table do
      row :user_first_name
      row :user_last_name
      row :user_email
      row :user_phone_no
      row :doc_email
      row :booking_time
    end
  end

  form html: { enctype: 'multipart/form-data' } do |f|
    f.inputs do
      f.input :user_first_name
      f.input :user_last_name
      f.input :user_email
      f.input :user_phone_no
      f.input :doc_email
      f.input :booking_time
    end
    f.actions
  end
end
