ARGF.lines do |line|
File.open("out.txt", 'w') { |file| file.write(ARGF.each_line.sort.join) } 
  puts ARGF.filename if ARGF.lineno == 1
  puts "#{ARGF.lineno}: #{line}"
end

#puts "out.txt has content after sorting:"

# this would work in 1.9.3 
#File.write(ARGV.pop, ARGF.each_line.sort.join)

# for ruby 1.9.2
# copy_file(ARGF, "output.txt", preserve = false, dereference = true)

#File.open("out.txt", 'w') { |file| file.write(ARGF.each_line.sort.join) } 


#new_array = File.readlines(#{ARGF}).sort
#new_array = ARGF.each_line.sort.join
#puts new_array

#File.open('out.txt', 'w') {|f| f.write(new_array) }
