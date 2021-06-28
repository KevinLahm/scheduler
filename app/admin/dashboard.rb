ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    columns do
      column do
        panel "APPOINTMENTS" do
          table_for Appointment.all.order('id asc').limit(5).each do |appointment|
            column :booking_time
            column :user_id
            column :doctor_id          
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
          table_for Doctor.all.order('id asc').limit(4).each do |doctor|
            column :first_name
            column :last_name
            column :email
            column :phone_no
          end
        end 
      end
    end
  end 
end
