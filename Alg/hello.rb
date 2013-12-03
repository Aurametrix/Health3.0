def h(name)
puts "Hello #{name}!"
end

ARGV.each do|a|
  puts "Argument: #{a}"
end

class HelloWorld
   def initialize(name)
      @name = name.capitalize
   end
   def sayHi
      puts "Hello #{@name}!"
   end
end

hello = HelloWorld.new("World")
hello.sayHi
