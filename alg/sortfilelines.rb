ARGF.lines do |line|
  puts ARGF.filename if ARGF.lineno == 1
  puts "#{ARGF.lineno}: #{line}"
end

puts "after sorting:"

# this would work in 1.9.3 
#File.write(ARGV.pop, ARGF.each_line.sort.join)

# for ruby 1.9.2
# copy_file(#{ARGF.filename}, "output.txt", preserve = false, dereference = true)

#new_array = File.readlines("in.txt").sort
new_array = ARGF.each_line.sort.join
puts new_array

File.open('out.txt', 'w') {|f| f.write(new_array) }
