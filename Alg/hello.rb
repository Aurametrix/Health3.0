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

hello = ARGV[0]
hello.sayHi

//https://www.ruby-lang.org/en/documentation/quickstart/2/
