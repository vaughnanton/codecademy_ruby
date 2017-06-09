print "Please input text that you would like to daffify?"
user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"
    user_input.gsub!(/s/, "th")
else
    puts "There are no \"s\" in your string..."
end

puts "Here is your daffified text... #{user_input}"
