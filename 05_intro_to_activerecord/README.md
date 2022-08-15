## 5. Intro to ActiveRecord
### SWBAT

- [ ] Review why we use Active Record
- [ ] Observe how to configure AR in Ruby applications
- [ ] Explain what a migration is 
- [ ] Observe creating & updating columns & tables w/ AR migrations
- [ ] Observe creating & updating rows w/ built in AR methods
- [ ] Observe how AR uses SQL “under the hood” to communicate with databases


# Steps for using Active Record
1. Draw out your models/tables
   What are your table names?
   What are their attributes/data types?

2. Use 'rake db:create_migration NAME=table_name' to generate a migration in db/migrate... might need bundle exec at the beginning
3. Build migration:
   class Owners < ActiveRecord::Migration[6.1]
   def change
      create_table :owners do |t|
         t.string :email
         t.string :address
         t.integer :phone
         t.string :username
      end
   end
   end