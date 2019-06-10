puts "1. Encapsulation instance method"

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

box = Box.new
box.name_public_instance
# box.name_protected_instance #=> protected method `name_protected_instance' called for #<Box:0x0000000000f0a9b0> (NoMethodError)
# box.name_private_instance #=> private method `name_private_instance' called for #<Box:0x0000000000f0a9b0> (NoMethodError)

puts "2. Encapsulation instance method with private and protected"

class Box
  def name_public_instance
    puts " name_public_instance is public method!!!!"    
    name_protected_instance
    name_private_instance
    # self.name_private_instance  #Error
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

box = Box.new
box.name_public_instance

puts "3. Encapsulation class method"

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

Staff.name_public_class
# Staff.name_protected_class #=> protected method `name_protected_class' called for Staff:Class (NoMethodError)
# Staff.name_private_class #=> private method `name_private_class' called for Staff:Class (NoMethodError)

puts "3. Encapsulation class method"

class Staff
  class << self
    def name_public_class
      puts " name_public_class is public method!!!!"    
      name_protected_class
      name_private_class
      # self.name_private_class #Error
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

Staff.name_public_class
