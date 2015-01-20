# Find the first non-repeating character in a string:("ABCA" -> B )
puts "give me the string:"
str = STDIN.gets.chomp
letters = str.split("")
squash = letters.uniq
matches = squash.select do |l|
  before_size = letters.size
  letters.delete(l)
  after_size = letters.size
  before_size - after_size == 1
end
puts matches[0]
