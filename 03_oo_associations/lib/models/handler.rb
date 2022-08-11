class Handler
    attr_reader :id
    attr_accessor :name, :email, :phone
    @@all = []
    def initialize(attributes={})
        @id = @@all.length+1
        @name = attributes[:name]
        @email = attributes[:email]
        @phone = attributes[:phone]
        @@all << self
    end 

    #.Class methods
    def self.all
        @@all
    end 

    def self.by_index(idx)
        @@all[idx]
    end 
    def self.first
        @@all[0]
    end

    #Instance Methods 
    def appointments
        Appointment.all.filter{|a| a.handler_id == self.id}
    end
    def pets
        self.appointments.map{|a| Pet.all.find{|p| p.id == a.pet.id}}
    end
    def pet_names
        self.pets.map{|p| p.name}
    end
end 