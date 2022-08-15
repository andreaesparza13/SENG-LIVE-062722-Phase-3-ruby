class Pet < ActiveRecord::Base
   #CRUD
      #Create
         #Pet.create -> creates a new instance and saves it to the database
            #Which does the same thing as:
               #Pet.new -> create a new instance
               #Pet.save -> save the instance to the database

      #Read
         #Pet.all -> lists all instances in the database
         #Pet.find -> returns an instance by id
         #Pet.find_by -> returns an instance by an attribute
         #Pet.first -> returns first resource
         #Pet.last -> returns last resource
         #Pet.where(:attribute = 'something')
         #Pet.order(:attribute)
         #Pet.pluck(:attribute)
         #So many more!

      #Update
         #pet_instance.update -> update the instance
         #Pet.update -> updates ALL instances
         #pet_instance.save -> save changes to the instance

      #Delete
         #pet_instance.destroy -> destroy the instance
         #Pet.destroy -> destroy ALL instances
end