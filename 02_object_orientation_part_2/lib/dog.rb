class Dog < Pet
  attr_accessor :last_walked_at
  def initialize(name, age, breed, image_url)
    super(name, age, breed, image_url, last_fed_at)
    @last_walked_at = nil
  end
  # ✅ 3. instance method: 'walk' - updates the dog's last_walked_at property to the current time
  def walk
    # @last_walked_at = Time.now <<----- same as below, interchangeable
    self.last_walked_at = Time.now
  end
end

