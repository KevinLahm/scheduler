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
Migrate the Database using:

	rails db:create db:migrate

Step 4:
Run the rails server using:

	rails s   (Afterwards, go to the link 'localhost:3000' in your favourite browser to access the app.)

N/B: If you find this error 'Webpacker::Manifest::MissingEntryError...' Then run the line below in terminal

	bundle exec rake webpacker:install

That's it

	voilà

## NOTE

In config/database.yml remember to subtitute these commented lines:

	<!-- 	username: your_user_name
				password: your_password  -->

With your real username and password!
