ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    columns do
      column do
        panel "APPOINTMENTS" do
          table_for Appointment.all.order('user_first_name asc').limit(5).each do |appointment|
            column (:user_first_name) {|appointment| link_to(appointment.user_first_name, admin_appointment_path(appointment))}
            column :user_last_name
            column :user_email
            column :user_phone_no
            column :doc_email
            column :booking_time          
          end
        end 
      end
    end

    columns do
      column do
        panel "USERS" do
          table_for User.all.order('id asc').limit(4).each do |user|
            column :first_name
            column :last_name
            column :email
            column :phone_no
          end
        end 

        panel "DOCTORS" do
          table_for Doctor.all.order('id asc').limit(4).each do |contact|
            column :first_name
            column :last_name
            column :email
            column :phone_no
            column :user_id
            column :appointment_id
          end
        end 
      end
    end
  end 
end
