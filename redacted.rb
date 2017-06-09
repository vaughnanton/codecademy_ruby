=begin
A simple program to change a user's input
using only arrays and iterators.
=end

puts "Please enter text to search through: "
text = gets.chomp
puts "Please enter words to redact: "
redact = gets.chomp

words = text.split(" ")

words.each do |word|
  if word != redact
    print word + " "
  else
    print "REDACTED "
  end
end
