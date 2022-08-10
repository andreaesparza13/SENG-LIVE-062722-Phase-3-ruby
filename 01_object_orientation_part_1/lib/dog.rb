class Dog
  attr_reader :name, :breed
  attr_accessor :age, :image_url, :last_fed_at, :last_walked

  # ✅ we should be able to create dogs with a name, age, breed, and image_url
  def initialize(name, age, breed, image_url, last_walked, last_fed_at)
    @name = name
    @age = age
    @breed = breed
    @image_url = image_url
    @last_fed_at = last_fed_at
    @last_walked = last_walked
  end
  

  # ✅ we want to be able to access a dog's name, age, breed, image_url, last_fed_at and last_walked at times



  # ✅ we want to be able to print details about a dog (this time including the last walked at and last fed at times)


end