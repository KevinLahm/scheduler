ActiveAdmin.register Doctor do
  permit_params :first_name, :last_name, :email, :phone_no

  show do |_t|
    attributes_table do
      row :first_name
      row :last_name
      row :email
      row :phone_no
    end
  end

  form html: { enctype: 'multipart/form-data' } do |f|
    f.inputs do
      f.input :first_name
      f.input :last_name
      f.input :email
      f.input :phone_no
    end
    f.actions
  end
end
