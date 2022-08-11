class Cat < Pet
    attr_accessor :indoor, :drop_in_visit
    def initialize(name, age, breed, image_url, last_fed_at, indoor)
        super(name, age, breed, image_url)
        @indoor = indoor
        @drop_in_visit = nil
    end
    def visit
        self.drop_in_visit = Time.now
    end
end