puts "1. Inheritance with instance method"
class Animal
  def speak
    "Hello!"
  end
end

class GoodDog < Animal
  attr_accessor :name

  def initialize n
    self.name = n
  end

  def speak
    "#{self.name} says arf!"
  end
end

class Cat < Animal
end

sparky = GoodDog.new "Sparky"
paws = Cat.new
puts sparky.speak 
puts paws.speak

puts "2. Inheritance instance method with access modifier"
class Box
  def name_public_instance
    puts " name_public_instance is public method!!!!"    
  end

  protected

  def name_protected_instance
    puts " name_protected_instance is protected method!!!!"    
  end
  
  private
  
  def name_private_instance
    puts " name_private_instance is private method!!!!"    
  end

end

class BigBox < Box
  def big_box_name_public_instance
    name_protected_instance
    name_private_instance
    # self.name_private_instance
  end
end

big_box = BigBox.new
big_box.name_public_instance
big_box.big_box_name_public_instance
# big_box.name_protected_instance #=> protected method `name_protected_instance' called for #<BigBox:0x0000000000f0a9b0> (NoMethodError)
# big_box.name_private_instance #=> private method `name_private_instance' called for #<BigBox:0x0000000000f0a9b0> (NoMethodError)


puts "3. Inheritance class method with access modifier"
class Staff
  class << self
    def name_public_class
      puts " name_public_class is public method!!!!"    
    end

    protected

    def name_protected_class
      puts " name_protected_class is protected method!!!!"    
    end
    
    private
    
    def name_private_class
      puts " name_private_class is private method!!!!"    
    end
  end
end

class Manager < Staff
  def self.manager_name_public_class
    name_protected_class
    name_private_class
  end 
end

Manager.name_public_class
Manager.manager_name_public_class
# Manager.name_protected_class #=> protected method `name_protected_class' called for Manager:Class (NoMethodError)
# Manager.name_private_class #=> private method `name_private_class' called for Manager:Class (NoMethodError)