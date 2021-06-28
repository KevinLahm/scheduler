ActiveAdmin.register Doctor do
  permit_params :first_name, :last_name, :email, :phone_no, :user_id, :appointment_id

  show do |_t|
    attributes_table do
      row :first_name
      row :last_name
      row :email
      row :phone_no
      row :user_id
      row :appointment_id
    end
  end

  form html: { enctype: 'multipart/form-data' } do |f|
    f.inputs do
      f.input :first_name
      f.input :last_name
      f.input :email
      f.input :phone_no
      f.input :user_id
      f.input :appointment_id
    end
    f.actions
  end
end
