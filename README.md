# SCHEDULER

This is an app where a user can track medical appointments with different doctors
(models: user, doctor, appointment). 

## How to get started:

Step 1:
Clone the project into your computer directory with:

	git clone https://github.com/KevinLahm/scheduler.git

Step 2:

cd into project directory, i.e

	cd scheduler

Step 3:
Create, Migrate and Seed the Database using:

	rails db:create db:migrate db:seed

Step 4:
Run the rails server using:

	rails s   (Afterwards, go to the link 'localhost:3000' in your favourite browser to access the app.)

N/B: If you find this error 'Webpacker::Manifest::MissingEntryError...' Then run the line below in terminal

	bundle exec rake webpacker:install

Redister and access the user dashboard.

Book appointments by selecting the doctor in the drop-down. View the appointments also so as to keep track of them.

To access Admin panel, go to:

	localhost:3000/admin
	email: admin@example.com
	password: password

In the admin panel you have the power to Create, Read, Update and Delete.

That's it

	voilà

## NOTE

In config/database.yml remember to subtitute these commented lines:

	username: your_user_name
	password: your_password

With your real username and password!
