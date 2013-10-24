File.open("out.txt", 'w') { |file| file.write(ARGF.each_line.sort.join) } 
# After a file in ARGV has been read, ARGF removes it from the Array

# this will work for the next file
ARGF.lines do |line|
  puts ARGF.filename if ARGF.lineno == 1
  puts "#{ARGF.lineno}: #{line}"
end


# ruby sortfilelines.rb --verbose file1 file2
# ARGV  #=> ["--verbose", "file1", "file2"]
# option = ARGV.shift #=> "--verbose"
# ARGV  #=> ["file1", "file2"]

# reading all at once
#new_array = ARGF.each_line.sort.join
#arr_of_arrs = CSV.read("path/to/file.csv")
# puts ARGF.readlines # Returns the contents of file as an Array

# this would work in 1.9.3 
#File.write(ARGV.pop, ARGF.each_line.sort.join)

# for ruby 1.9.2
# copy_file(ARGF, "output.txt", preserve = false, dereference = true)

#File.open("out.txt", 'w') { |file| file.write(ARGF.each_line.sort.join) } 
#File.open('out.txt', 'w') {|f| f.write(new_array) }
