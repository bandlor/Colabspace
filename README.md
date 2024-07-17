# README

## How to Run
1. Run `gem install dip`.
2. In the root project folder, run `dip provision`. This sets up the project and starts the server.
   - Run dip rails s to start the container.
3. Go to `localhost:3000/users`, create a new user, and add an image.

## Configs

note: [Manual](https://edgeguides.rubyonrails.org/active_storage_overview.html) is used for setup Active Storage
1. Open container: `dip runner`
2. Add ActiveStorage: `bin/rails active_storage:install` and `bin/rails db:migrate`
3. Generate user scaffold 
4. Add User attachment(on line app/models/user.rb:2) 
5. Be sure that corresponding libs are on machine(on line .dockerdev/Aptfile:5)
6. Additional configuration on lines:
   - config/application.rb:13
   - config/environments/development.rb:71
