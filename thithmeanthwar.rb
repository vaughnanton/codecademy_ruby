=begin
In this project, I combine control flow with
a few Ruby string methods to Daffy Duckify a user's
string, replacing "s" with "th".
=end

print "Please input text that you would like to daffify?"
user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"
    user_input.gsub!(/s/, "th")
else
    puts "There are no \"s\" in your input..."
end

puts "Here is your daffified text... #{user_input}"
