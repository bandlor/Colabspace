# README

## How to Run
1. run `gem install dip`
2. run `dip provision` in root project folder, it setups project and run start server
   - run `dip rails s` to run container
3. go to `localhost:3000/users`, create new user and add image

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