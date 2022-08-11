  # ✅ 1. Create a class that will be inherited by dog and cat
class Pet
  attr_accessor :name, :age, :breed, :image_url, :last_fed_at
  # ✅ 1. class variable: all - holds all dogs we have saved

  @@all = []
  # initialize with an optional hash of attributes
  def initialize(name, age, breed, image_url, last_fed_at) 
    @name = name
    @age = age
    @breed = breed
    @image_url = image_url
    @last_fed_at = last_fed_at
    @@all << self
  end

  # ✅ 2. class method: 'all' - retrieves the value of the class variable
  def self.all
    @@all
  end
  def self.find_dog(name)
    @@all.find do |dog|
      dog.name == name
    end
  end
  
  # ✅ 4. instance method: 'feed' - updates the dog's last_fed_at property to the current time
  def feed
    self.last_fed_at = Time.now
  end

  # print details about a dog (including the last walked at and last fed at times)
  def print
    puts
    puts self.formatted_name
    puts "  Age: #{self.age}"
    puts "  Breed: #{self.breed}"
    puts "  Image Url: #{self.image_url}"
    puts "  Last walked at: #{self.last_walked_at}"
    puts "  Last fed at: #{self.last_fed_at}"
    puts
  end

  # ✅ 5. private method: 'formatted_name' - returns the name of the dog color coded to indicate whether they are hungry or need a walk
  private

  def formatted_name
    if self.last_fed_at.nil?
      "#{self.name} is hungry"
    else
      "#{self.name} is all good"
    end
  end

  # ✅ 6. private method: 'format_time(time)' - accepts a time and returns it in a human readable format
  # should look like this: "Monday, 04/18/22 10:12 AM"
end