puts "Enter a sentence: "
text = gets.chomp

words = text.split(" ")

frequencies = Hash.new(0)
words.each { |word| frequencies[word] += 1 }
frequencies = frequencies.sort_by {|a, b| b }
frequencies.reverse!

frequencies.each do |word, count|
    puts word + " " + count.to_s
end
