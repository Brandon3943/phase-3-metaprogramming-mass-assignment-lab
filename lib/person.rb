class Person
  # your code here
  @@all = []

  def initialize argument = {}
    argument.each do |key, value|
      self.class.attr_accessor(key)
      self.send("#{key}=", value)
    end 
     @@all << self  
  end

  def self.all
    @@all
  end

  puts "People -> #{self.all}"

end

brandon = Person.new ({name: "brandon", age: 29, job: "idk"})
darian = Person.new ({first_name: "darian", age: 26, spirit_animal: "dog"})

puts "People -> #{Person.all}"
