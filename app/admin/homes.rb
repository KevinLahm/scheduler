ActiveAdmin.register Home do
  permit_params :detail

  show do |_t|
    attributes_table do
      row :detail
    end
  end

  form html: { enctype: 'multipart/form-data' } do |f|
    f.inputs do
      f.input :detail
    end
    f.actions
  end
end
